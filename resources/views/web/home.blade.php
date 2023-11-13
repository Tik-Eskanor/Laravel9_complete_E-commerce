@extends('layouts.web')

 @section('content')
  <section class="hero">
    <div class="container">
        <div class="content">
            <div class="texts">
                <h1>Eco Store</h1>
                <p class="para-text">There's <span>Always More</span>  To Offer</p>
                <div class="btn-container">
                    <a href="" class="btn">Blog Posts</a>
                    <a href="" class="btn">Buy Now</a>
                </div>
            </div>
        </div>
    </div> 
  </section>

  <section class="about">
    <div class="container">
        <div class="row">
            <div class="col-6">
                <div class="content">
                    <h1>Welcome to Eco Store</h1>
                    <p class="para-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto magnam tempora, recusandae in, autem molestiae rerum nostrum quaerat quia aut quisquam facere quidem sint? Ratione aspernatur accusantium dolorum voluptate fuga similique facilis itaque doloremque veniam aliquam, voluptatum, suscipit laudantium tempore a id eos vitae esse est, autem mollitia nesciunt! Accusamus.</p>
                    <div class="mt-5">
                        <a href="{{ route('shop.index') }}" class="btn">Read more <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="img">
                    <img src="{{ asset('images/a5.jpg') }}">
                </div>
            </div>
        </div>      
    </div>
  </section>
  <div class="sub-section">
    <div class="container">
        <div class="owl-carousel owl-theme">
            <div class="item">
                <div class="row">
                    <div class="col-6">
                        <div class="texts">
                            <h2>Experience <br><span>Unlimited</span> Shopping</h2>   
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, iusto cumque. Ducimus nihil doloribus a dolorem voluptas eum rem in.</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="img"><img src="{{ asset('images/a1.png') }}"  class="m-auto md:m-0" ></div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="row">
                    <div class="col-6">
                        <div class="texts">
                            <h2>Buy More <br><span>Save</span> A LOT More</h2>   
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, iusto cumque. Ducimus nihil doloribus a dolorem voluptas eum rem in.</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="img"><img src="{{ asset('images/a2.png') }}" class="m-auto md:m-0" ></div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="row">
                    <div class="col-6">
                        <div class="texts">
                            <h2>Vist Our<br><span>Online</span> Store</h2>   
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis, iusto cumque. Ducimus nihil doloribus a dolorem voluptas eum rem in.</p>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="img"><img src="{{ asset('images/a4.png') }}" class="m-auto md:m-0"></div>
                    </div>
                </div>
            </div>
        </div>  
    </div>
    
  </div>
  
  <section class="products">
    <div class="container">
        <div class="subtitle">
            <h1>Featured</h1>
        </div>
        <div class="row">
            @foreach ($products as $product)
                <div class="col-3">
                    <div class="content">
                        <div class="img"><img src="{{ asset('storage/'.$product->image) }}" ></div>
                        <div class="texts">
                            <a href="{{route('shop.show',$product->id)}}">{{ $product->name }}</a>
                            <p>{{ $product->presentPrice() }}</p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="mt-3">
            <a href="{{ route('shop.index') }}" class="btn">Load more <i class="fas fa-arrow-right"></i></a>
        </div>
    </div>
  </section>
 @endsection
