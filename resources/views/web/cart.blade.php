@extends('layouts.web')
 @section('content')
  <section class="cart">
    <div class="container">
        <div class="row-stretch">
            <div class="col-8">
                <div>
                    @if (session()->has('success_message'))
                       <div class="success_message">{{ session()->get('success_message') }}</div> 
                   @endif
                   @if (count($errors) > 0)
                   <div class="error_message">
                       @foreach ($errors->all() as $error)
                           <li>{{ $error }}</li>
                       @endforeach
                   </div>    
                   @endif 
                </div>
            </div>
            @if (Cart::count() > 0)
            <div class="col-8">
                <h1><span>{{ Cart::count() }}</span> item added to cart</h1> 
                @foreach (Cart::content() as $item)
                <div class="cart-item">
                    <div class="row">
                        <div class="col-8">
                            <div class="row">
                                <div class="col-3">
                                    <div class="img"><img src="{{ asset('storage/'.$item->model->image) }}" width="80%"></div>
                                </div>
                                <div class="col-6">
                                    <div class="texts">
                                        <a href="{{route('shop.show',$item->model->id)}}" class="cart-title">{{ $item->model->name }}</a>
                                        <h3 class="para-text">
                                            {{ $item->model->details }}
                                        </h3>
                                        <p class="price">${{ $item->subtotal() }}</p>
                                    </div> 
                                </div>
                            </div>   
                        </div>
                        <div class="col-3">
                            <div class="quantity-wrapper">
                                <select name="" class="quantity" data-id="{{ $item->rowId }}" data-productQuantity="{{ $item->model->quantity }}">
                                @for ($i = 1; $i <= 5 ; $i++)
                                    <option value="{{ $i }}" @selected($item->qty == $i)>{{ $i }}</option>
                                @endfor
                                    
                                </select>
                            </div>
                            <div class="btn-wrapper">
                                <form action="{{ route('cart.remove',$item->rowId) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn">Remove</button>
                                </form>

                                <form action="{{ route('cart.save') }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="id" value="{{ $item->model->id }}">
                                    <input type="hidden" name="name" value="{{ $item->model->name }}">
                                    <input type="hidden" name="price" value="{{ $item->model->price }}">
                                    <input type="hidden" name="rowId" value="{{ $item->rowId }}">
                                    <button class="btn btn-dark">Save for later</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>  
                @endforeach
                @if(!session()->has('coupon'))
                <div class="coupon">
                  <p>Have a code?</p>
                  <div class="row">
                    <div class="col-8">
                        <div class="content">
                          <form action="{{route('coupon.store')}}" method="POST" class="coupon-form">
                          @csrf
                            <input type="text" name="coupon_code" class="input-text">
                            <input type="submit" class="btn" value="Apply">
                          </form>  
                        </div>
                    </div>     
                  </div> 
              </div>
              @endif
                <div class="subtotal">
                    <div class="container">
                        <div class="row-stretch">
                            <div class="col-6">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus fugit eos excepturi esse necessitatibus nesciunt tempora molestias inventore quos ad.</p>
                            </div>
                            <div class="col-6">
                                <div class="content subtotal-price">
                                    <div class="row"> <h2>Subtotal:</h2><span>${{Cart::subtotal()}}</span></div>

                                    @if (session()->has('coupon'))
                                    <div class="row discount-row"> 
                                      <h2>Discount {{ session()->get('coupon')['name'] }} |
                                        <form action="{{ route('coupon.destroy') }}" method="POST" style="display:inline">
                                          @method('DELETE')
                                          @csrf
                                          <button class="rm-coupon">Remove</button>
                                        </form>
                                      </h2>
                                      <span>${{ $discount }}</span>
                                    </div>
                                    <div class="row"> <h2>New Subtotal:</h2><span>${{ $newSubtotal }}</span></div>
                                    @endif
                                    
                                    <div class="row"><h2>Tax:</h2><span>${{ $newTax }}</span></div>
                                    <div class="row"><h1>Total:</h1><span>${{ $newTotal }}</span></div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="content">
                    <div class="proceed">
                        <div class="btn-wrapper">
                            <a href="{{ route('shop.index') }}" class="btn">Continue Shopping</a>
                            <a href="{{ route('checkout.index') }}" class="btn btn-green">Proceed to Checkout</a>
                        </div> 
                    </div> 
                </div>
            </div>
            @else
            <div class="col-12">
             <h3>No items in cart!</h3>
             <div class="btn-wrapper">
                <a href="{{ route('shop.index') }}" class="btn">continue shopping</a>
             </div>
            </div> 
            @endif

            @if (Cart::instance('saved')->count() > 0)  
            <div class="col-8 mt-10">        
                <h1><span>{{ Cart::instance('saved')->count() }}</span> item(s) saved for later</h1> 
                @foreach (Cart::instance('saved')->content() as $item)
                <div class="cart-item">
                <div class="row">
                    <div class="col-8">
                        <div class="row">
                            <div class="col-3">
                                <div class="img"><img src="{{ asset('storage/'.$item->model->image) }}" width="80%"></div>
                            </div>
                            <div class="col-6">
                                <div class="texts">
                                    <a href="{{route('shop.show',$item->model->id)}}" class="cart-title">{{ $item->model->name }}</a>
                                    <h3 class="para-text">
                                        {{ $item->model->details }}
                                    </h3>
                                    <p class="price">${{ $item->model->presentPrice() }}</p>
                                </div> 
                            </div>
                        </div>   
                    </div>
                    <div class="col-3">
                        <div class="btn-wrapper">
                            <form action="{{ route('saved.remove',$item->rowId) }}" method="POST">
                            @csrf
                            @method('DELETE')
                            <button class="btn">Remove</button>
                            </form>

                            <form action="{{ route('saved.move') }}" method="POST">
                            @csrf
                            <input type="hidden" name="id" value="{{ $item->model->id }}">
                            <input type="hidden" name="name" value="{{ $item->model->name }}">
                            <input type="hidden" name="price" value="{{ $item->model->price }}">
                            <input type="hidden" name="rowId" value="{{ $item->rowId }}">
                            <button class="btn">Move to cart</button>
                            </form>
                        </div>
                    </div>
                </div>
                </div>  
                @endforeach
            </div>
            @else
            <div class="col-12">
              <h3>No items seved for later</h3>
            </div>
            @endif
        </div>
    </div>
  </section>

  <section class="products related">
        <div class="container">
            <div class="subtitle">
                <h2>Related Products</h2>
            </div>
            <div class="row">
                @foreach ($products as $product)
                <div class="col-3">
                    <div class="content">
                        <div class="img"><img src="{{ productImage($product->image)}}" ></div>
                        <div class="texts">
                            <a href="{{ route('shop.show',$product->id) }}">{{ $product->name }}</a>
                            <p>${{ $product->presentPrice() }}</p>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            </div>
        </div>
  </section>  
 @endsection

