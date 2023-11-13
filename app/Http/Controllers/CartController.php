<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Cart;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::inRandomOrder()->take(4)->get();
        return view('web.cart',[
            'products'=>$products,
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
    public function store(Request $request)
    {
        $duplicate = Cart::search(function($cartItem) use ($request)
        {
            return $cartItem->id === $request->id;
        });
        if($duplicate->isNotEmpty())
        {
            return redirect()->route('cart.index')->with('success_message','Item already in cart');
        }

       Cart::add($request->id,$request->name,1,$request->price)->associate('App\Models\Product');
       return redirect()->route('cart.index')->with('success_message','item added to cart');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        if($request->quantity > $request->productQuantity)
        {
            session()->flash('success_message','We currently do not have enough item in stock');
            return false;
        }

        Cart::update($request->rowId,$request->quantity);
        session()->flash('success_message','Quantity was update successfully');
        return true;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Cart::remove($id);
        return back()->with('success_message','Item removed from cart');
    }

    public function save(Request $request)
    {
        Cart::remove($request->rowId);

        $duplicate = Cart::instance('saved')->search(function($cartItem) use ($request)
        {
            return $cartItem->id === $request->id;
        });

        if($duplicate->isNotEmpty())
        {
            return redirect()->route('cart.index')->with('success_message','Item is already saved for later');
        }

      Cart::instance('saved')->add($request->id,$request->name,1,$request->price)
      ->associate('App\Models\Product');
 
       return redirect()->route('cart.index')->with('success_message','item has been saved for later');
    }

    // remove from saved to later
    public function removeSaved($id)
    {
        Cart::instance('saved')->remove($id);
        return back()->with('success_message','Item has been removed');
    }

    // switch from saved to later back to cart
    public function backToCart(Request $request)
    {
        Cart::instance('saved')->remove($request->rowId);

        $duplicate = Cart::instance('default')->search(function($cartItem) use ($request)
        {
            return $cartItem->id === $request->id;
        });
        if($duplicate->isNotEmpty())
        {
            return redirect()->route('cart.index')->with('success_message','Item is already in cart');
        }

      Cart::instance('default')->add($request->id,$request->name,1,$request->price)
      ->associate('App\Models\Product');
 
       return redirect()->route('cart.index')->with('success_message','item has been moved to cart');
        
    }

}
