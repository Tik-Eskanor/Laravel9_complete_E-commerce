<?php
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ShopController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\ConfirmationController;
use App\Http\Controllers\CouponController;
use App\mail\OrderPlaced;
use App\Models\Order;
use App\Http\Controllers\OrderController;



Route::get('/',[HomeController::class,'index'])->name('home');

Route::get('/shop',[ShopController::class,'index'])->name('shop.index');
Route::get('/shop/{product}',[ShopController::class,'show'])->name('shop.show');

Route::get('/cart',[CartController::class,'index'])->name('cart.index');
Route::post('/cart',[CartController::class,'store'])->name('cart.store');
Route::post('/cart/save',[CartController::class,'save'])->name('cart.save');
Route::patch('/cart',[CartController::class,'update'])->name('cart.update');
Route::delete('/cart/{product}',[CartController::class,'destroy'])->name('cart.remove');

Route::delete('/cart/removesaved/{product}',[CartController::class,'removeSaved'])->name('saved.remove');
Route::post('/cart/backtocart',[CartController::class,'backToCart'])->name('saved.move');

Route::post('/coupon',[CouponController::class,'store'])->name('coupon.store');
Route::delete('/coupon',[CouponController::class,'destroy'])->name('coupon.destroy');

Route::get('/checkout',[CheckoutController::class,'index'])->middleware('auth')->name('checkout.index');
Route::post('/checkout',[CheckoutController::class,'store'])->name('checkout.store');

Route::get('/search',[ShopController::class,'search'])->name('search');
Route::get('/search-page',[ShopController::class,'searchPage'])->name('search-page');



Route::get('/guestCheckout',[CheckoutController::class,'index'])->name('guestCheckout.index');

Route::get('/thankyou',[ConfirmationController::class,'index'])->name('confirmation.index');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


// Lareve breeze defaul profile (dashoar) routes
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // this is not part of breeze efault profile routes
    Route::get('/my-orders', [OrderController::class, 'index'])->name('orders.index');
    Route::get('/my-order/{order}', [OrderController::class, 'show'])->name('order.show');
});

require __DIR__.'/auth.php';



// Route::get('mailable',function(){
//   $order = Order::find(1);
//   return new OrderPlaced($order);
// });


// Route::view('/thankyou','web.thankyou')->name('thankyou');
