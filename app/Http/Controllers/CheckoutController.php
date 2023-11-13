<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail; //added
use App\Http\Requests\CheckoutRequest; //added
use App\Models\Order;    //added
use App\Models\Product;    //added
use App\Models\OrderProduct; //added
use CardErrorException; //added
use Cart; //added
use Stripe; //added
use App\Mail\OrderPlaced; //added

class CheckoutController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
       if(Cart::instance('default')->count() == 0)
       {
           return redirect()->route('shop.index');
       }
       
       if(auth()->user() && request()->is('guestCheckout'))
       {
          return redirect()->route('checkout.index');
       }

        return view('web.checkout',[
            'discount'=>getNumbers()['discount'],
            'newSubtotal'=>getNumbers()['newSubtotal'],
            'newTax'=>getNumbers()['newTax'],
            'newTotal'=>getNumbers()['newTotal']
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CheckoutRequest $request)
    {
        //checks if a product purchased is available in stock
        if($this->productsNoLongerAvailable())
        {
            return back()->withErrors('Sorry! One of the items in your cart is no longer in stock'); //handle errors  
        }

        // $request->validated();  <- optional

        $content = Cart::content()->map(function($item){
            return $item->model->name.", ".$item->qty;
        })->values()->toJson();// toJson function returs a string format of the array

        try {
            $charge = Stripe::charges()->create([
                'amount'=>getNumbers()['newTotal'],
                'currency'=>'CAD',
                'source'=>$request->stripeToken,
                'description'=> 'Order',
                'receipt_email'=> $request->email,
                'metadata' =>[ //<-this is used for details about the product purchased
                         'content'=>$content,
                         'quantity'=>Cart::instance('default')->count(),
                         'discount'=> collect(session()->get('coupon'))->toJson() ?? '0'
                ]
                ]);

           $order =  $this->addOrder($request, null);
           Mail::send(new OrderPlaced($order));

        //  decrease quantity in products table
            $this->decreaseQuantity();

            Cart::instance('default')->destroy(); //destroy the card instance after successful payment
            if(session()->has('coupon'))
            {
                session()->forget('coupon');
            }

            return redirect()->route('confirmation.index')->with("success_message","Thank you");
        }  
        catch (CardErrorEception $e) 
        {
            $this->addOrder($request, $e->getMessage());
            return back()->withErrors('Error! '.$e->getMessage()); //handle errors  
        }
    }


   protected function addOrder($request, $error)
   {
    $order = Order::create([
        'user_id'=> auth()->user() ? auth()->user()->id : null,
        'billing_email'=>$request->email,
        'billing_name'=>$request->name,
        'billing_address'=>$request->address,
        'billing_city'=>$request->city,
        'billing_province'=>$request->province,
        'billing_postalcode'=>$request->postalcode,
        'billing_phone'=>$request->phone,
        'billing_name_on_card'=>$request->card_name,
        'billing_discount'=>getNumbers()['discount'],
        'billing_discount_code'=>getNumbers()['code'],
        'billing_subtotal'=>getNumbers()['newSubtotal'],
        'billing_tax'=>getNumbers()['newTax'],
        'billing_total'=>getNumbers()['newTotal'],
        'error'=>$error
    ]);
    
    foreach (Cart::instance('default')->content() as $item) 
    {
        OrderProduct::create([
           'order_id'=>$order->id,
           'product_id'=>$item->model->id,
           'quantity'=>$item->qty
        ]);
    }
    return $order;

   }


   protected function productsNoLongerAvailable()
   {
    foreach(Cart::content() as $item)
    {    
       $product = Product::find($item->model->id);
       if($product->quantity < $item->qty)
       {
          return true;
       }   
    }
    return false;
   }


   //  decrease quantity in products table in database
   protected function decreaseQuantity()
   {
       foreach(Cart::content() as $item)
       {
           $product = Product::find($item->model->id);
           $product->update([
             'quantity'=>$product->quantity - $item->qty
           ]);
       }
   }

}
