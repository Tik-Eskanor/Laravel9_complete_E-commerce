<?php
//  function presentPrice($price)
//  {
//     return number_format((float)$price,'2','.',',');
//  }

function productImage($path)
{
    return ($path &&  file_exists("storage/$path")) ? asset("storage/$path") : asset('images/hero.jpg');
}

   function getNumbers()
   {
        $tax = config('cart.tax')/100;
        $discount = session()->get('coupon')['discount'] ??  0;
        $code = session()->get('coupon')['name'] ?? null;
        $newSubtotal = ((int)Cart::subtotal() - $discount);
        if($newSubtotal < 0)
        {
            $newSubtotal = 0;
        }
        $newTax = $newSubtotal * $tax;
        $newTotal = $newSubtotal + $newTax;

        return [
            'tax'=>$tax,
            'discount'=>$discount,
            'code'=>$code,
            'newSubtotal'=>$newSubtotal,
            'newTax'=>$newTax,  
            'newTotal'=>$newTotal
        ];
   }

   function getStockLevel($quantity)
   {
    if($quantity > setting('site.stock_threshold'))
    {
        $stockLevel = "<div class='stock-in'>In stock</div>";
    }
    elseif($quantity <= setting('site.stock_threshold') && $quantity > 0)
    {
        $stockLevel = "<div class='stock-low'>Low stock</div>";
    }
    else
    {
        $stockLevel = "<div class='stock-empty'>Not available</div>";
    }
    return $stockLevel;
   }