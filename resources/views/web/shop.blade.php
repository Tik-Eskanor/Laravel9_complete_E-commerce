@extends('layouts.web')
 @section('content')
  <section class="shop">
      <div class="container">
          <div class="row-stretch">
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
              <div class="col-3 left">
                  <div class="content left">
                    <h2>By Category</h2>
                    <ul>
                        @foreach ($categories as $category)
                            <li class="{{ request()->category == $category->slug ? 'active': '' }}"><a href="{{ route('shop.index',['category'=>$category->slug]) }}">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>   
                  </div>
              </div>
              <div class="col-8">
                <section class="products">
                    <div class="container">
                        <div class="row">
                            <div class="subtitle">
                                <h1>{{ $category_name }}</h1>
                            </div>
                            <div class="price-filter">
                               <span><strong>Price: </strong></span>
                               <a href="{{route('shop.index',['category'=>request()->category,'sort'=>'low-high'])}}">low-high</a> |
                               <a href="{{route('shop.index',['category'=>request()->category,'sort'=>'high-low'])}}">high-low</a> 
                            </div>
                        </div>
                        <div class="row">                            
                            @forelse ($products as $product)
                             <div class="col-3">
                                <div class="content">
                                    <div class="img"><img src="{{ productImage($product->image)}}" ></div>
                                    <div class="texts">
                                        <a href="{{ route('shop.show',$product->id) }}">{{ $product->name }}</a>
                                        <p>${{ $product->presentPrice() }}</p>
                                    </div>
                                </div>
                             </div>
                            @empty
                             <div>No items Found</div>
                            @endforelse
                            {{-- <div>{{ $products->links() }}</div> --}}
                            <div class="col-12">{{ $products->appends(request()->input())->links() }}</div>
                        </div>
                    </div>
                </section>
             </div>
          </div>
      </div>
  </section> 
 @endsection