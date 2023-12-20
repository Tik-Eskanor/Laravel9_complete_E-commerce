@extends('layouts.web')
 @section('content')
  <section class="checkout">
    <div class="container">
      <div class="subtitle">
          <h1>Checkout</h1>
      </div>
        @if (session()->has('success_message'))
            <div class="success_message">{{ session()->get('success_message') }}</div> 
        @endif
        @if (count($errors) > 0)
        <div class="error_message">
            @foreach ($errors->all() as $error)
              <li>{!! $error !!}</li>
            @endforeach
        </div>    
        @endif
      <div class="row-stretch">
        <div class="col-6">
          <section class="cart">
            <div class="container">           
              <h1 class="subtitle">Your order</h1> 
              @foreach (Cart::content() as $item)
              <div class="cart-item">
                <div class="row">
                    <div class="col-3">
                      <div class="img"><img src="{{ asset('storage/'.$item->model->image)}}" width="50%"></div>
                    </div>
                    <div class="col-4">
                        <div class="content">
                          <div class="texts">
                            <h2>{{ $item->model->name }}</h2>
                            <h3 class="para-text">
                              {{ $item->model->details }}
                            </h3>
                            <p class="price">${{ $item->model->price }}</p>
                          </div>
                          <div class="qty">
                            {{ $item->qty }}
                          </div> 
                        </div>
                    </div>
                </div>   
              </div>
              @endforeach
              <div class="subtotal">                             
                  <div class="container">
                      <div class="row-stretch">
                        <div class="col-12">
                            <div class="content subtotal-price">
                                <div class="row"> <h2>Subtotal:</h2><span>${{ Cart::subtotal() }}</span></div>

                                @if (session()->has('coupon'))
                                <div class="row discount-row"> 
                                  <h2>
                                    Discount {{ session()->get('coupon')['name'] }} |
                                  </h2>
                                  <span>${{ $discount }}</span>
                                </div>
                                <div class="row"> <h2>New Subtotal:</h2><span>${{ $newSubtotal }}</span></div>
                                @endif
                                <div class="row"> <h2>Tax(13%):</h2><span>${{ $newTax }}</span></div>
                                <div class="row"><h1>Total:</h1><span>${{ $newTotal }}</</span></div>
                            </div>
                        </div> 
                      </div>
                  </div>                             
              </div>
            </div>
          </section> 
        </div>
        <div class="col-6">
            <div class="content left">
              <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
                @csrf
                  <h2>Billing Details</h2>
                  <div class="row">
                    <div class="input-col-12">
                      <span>Email</span>
                      @auth
                      <input type="text" name="email" value="{{ auth()->user()->email }}" readonly>
                      @else    
                      <input type="text" name="email" value="">
                      @endauth
                      @error('email')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-12">
                      <span>Name</span>
                      <input type="text" name="name" value="{{ old('name') }}">
                      @error('name')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-12">
                      <span>Address</span>
                      <input type="text" name="address" id="address" value="{{old('address')}}">
                      @error('address')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-6">
                      <span>City</span>
                      <input type="text" name="city" id="city" value="{{old('city')}}">
                      @error('city')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-6">
                      <span>Povice</span>
                      <input type="text" name="province" id="province" value="{{old('province')}}">
                      @error('province')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-6">
                      <span>Postal code</span>
                      <input type="text" name="postalcode" id="postalcode" value="{{old('postalcode')}}">
                      @error('postalcode')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-6">
                      <span>Phone</span>
                      <input type="text" name="phone" value="{{old('phone')}}">
                      @error('phone')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-12">
                      <h2>Payment Details</h2>
                    </div>
                    <div class="input-col-12">
                      <span>Name on card</span>
                      <input type="text" name="card_name" id="card_name" value="{{old('card-name')}}">
                      @error('card_name')
                        <div class="">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="input-col-12" id="payment-card-element">                    
                    </div>
                    <div class="input-col-12">
                      <div class="btn-wrapper">
                        <button id="checkout-btn">
                          <div class="spinner hide-spinner" id="spinner"></div>
                          <span id="button-text">Complete your order</span>
                        </button>
                        <div id="payment-message" class="hidden"></div>
                      </div>
                    </div>
                  </div>                    
              </form>
            </div>
        </div>
      </div>
    </div>
  </section>  
 @endsection