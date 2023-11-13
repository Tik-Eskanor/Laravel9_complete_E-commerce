<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Models\Coupon; //added
use App\Jobs\UpdateCoupon; //added

class CartUpdatedListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $couponName = session()->get('coupon')['name'] ?? "";

        if($couponName)
        {
            $coupon = Coupon::where('code',$couponName)->first();

            dispatch_now(new UpdateCoupon($coupon));
            // session()->put('coupon',[
            //     'name' => $coupon->code,
            //     'discount' => $coupon->discount(Cart::subtotal())
            // ]);
        }
    }
}
