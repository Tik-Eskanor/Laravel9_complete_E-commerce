<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Coupon; //added
use App\Jobs\UpdateCoupon; //added

class CouponController extends Controller
{


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $coupon = Coupon::where('code',$request->coupon_code)->first();

        if(!$coupon)
        {
            return redirect()->route('checkout.index')->withErrors('Invalid Coupon');
        }

        dispatch_now(new UpdateCoupon($coupon));
        // session()->put('coupon',[
        //     'name' => $coupon->code,
        //     'discount' => $coupon->discount(Cart::subtotal())
        // ]);

        return redirect()->route('cart.index')->with('success_message','Coupon has been applied');
    }


    /**
     * Remove the specified resource from storage.

     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {  
        session()->forget('coupon');
        return redirect()->route('cart.index')->with('success_message','Coupon has been removed');
    }
}
