@extends('layouts.web')
 @section('content')
  <section class="product">
      <div class="container">
          <div class="row">
            <div class="col-12">
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
            <div class="col-6">
                <div class="img-container">
                    <img src="{{ asset('storage/'.$product->image) }}" class="active" id="current-image" width="95%">
                </div>
                <div class="images">
                 @forelse (json_decode($product->images ?? "[]") as $image)
                  <img src="{{ productImage($image) }}" alt="" class="img">
                 @empty
                   <h3>No images</h3>
                 @endforelse
                </div>
            </div>
            <div class="col-6">
                <div class="content">
                   <div class="texts">
                       <h1>{{ $product->name }}</h1>
                       <h2>{{ $product->details }}</h2>
                       {!! $stockLevel !!}
                       <p class="price">${{ $product->price }}</p>
                       <p>{!! $product->description !!}</p>
                   </div>
                   <div class="btn-wrapper">
                       @if ($product->quantity > 0)
                       <form action="{{ route('cart.store') }}" method="POST">
                        @csrf
                        <input type="hidden" name="id" value="{{ $product->id }}">
                        <input type="hidden" name="name" value="{{ $product->name }}">
                        <input type="hidden" name="price" value="{{ $product->price }}">

                        <button class="btn">Add to cart</button>
                        </form>  
                       @endif
                   </div>
                </div>
            </div>
          </div>
      </div>
  </section>

  <section class="products related">
    <div class="container">
        <div class="subtitle">
            <h2>Related Products</h2>
        </div>
        <div class="row">
            @foreach ($related_products as $r_product)
            <div class="col-3">
                <div class="content">
                    <div class="img"><img src="{{ productImage($r_product->image)}}"width="95%" ></div>
                    <div class="texts">
                        <a href="{{ route('shop.show',$r_product->id) }}">{{ $r_product->name }}</a>
                        <p>${{ $r_product->price }}</p>
                    </div>
                </div>
            </div>
            @endforeach  
        </div>
    </div>
  </section> 
 @endsection

