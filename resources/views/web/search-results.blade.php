@extends('layouts.web')
 @section('content')
  <section class="products-search">
      <div class="container">
          <div class="row">
             <div class="col-12">
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
                 <h1 class="text-2xl">Search Results</h1>
                 <p class="mt-4 text-green-400 font-bold">{{ $products->total() }} result(s) for {{ request()->input('query') }}</p>

                 {{-- search result table --}}
                 <div class="wrapper">
                     <div class="table-container">
                        <table>
                            <thead>
                            <tr>
                             <th>Name</th>
                             <th>Details</th>
                             <th>Description</th>
                             <th>Price</th>
                            </tr>   
                            </thead>
                           
                            @foreach ($products as $product)
                            <tr>
                              <td><a href="">{{ $product->name }}</a></td>
                              <td>{{ $product->details }}</td> 
                              <td>{!! Str::limit($product->description, 80, '...') !!}</td> 
                              <td>{{ $product->price }}</td> 
                            </tr>  
                            @endforeach 
                        </table>
                     </div>
                 </div>

                 <div class="mt-5">{{ $products->appends(request()->input())->links() }}</div>
             </div>
          </div>
      </div>
  </section>
 @endsection

