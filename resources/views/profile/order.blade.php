@extends('layouts.web')
 @section('content')

    <div class="py-12">
        <div class="container">
            <div class="row-stretch">
                <div class="col-3">
                    <ul class="md:text-center  text-xl font-semibold">
                        <li class="mb-3 text-slate-800"><a href="{{ route('profile.edit') }}">My Profile</a> </a></li>
                        <li class="text-slate-700"><a href="{{ route('orders.index') }}">My Orders</a> </a></li>

                    </ul>
                </div>
                <div class="col-8">
                    <div class="subtitle">
                        <h1>Order ID: {{ $order->id }}</h1>
                    </div>
                    <div>
    
                    <div class="mb-5 rounded border-2">
                        <div class="bg-slate-100 p-5">
                            <div class="flex justify-between items-center">
                                <div class="flex flex-wrap">
                                    <div class="min-w-[150px] mb-3 mr-3">
                                        <h3 class="text-xl font-bold">ORDER PLACED</h3>
                                        <p>{{ $order->created_at }}</p>
                                    </div>
                                    <div class="min-w-[150px] mb-3 mr-3">
                                        <h3 class="text-xl font-bold">ORDER ID</h3>
                                        <p>{{ $order->id }}</p>
                                    </div>
                                    <div class="min-w-[150px] mb-3 mr-3">
                                        <h3 class="text-xl font-bold">ORDER TOTAL</h3>
                                        <p>${{ $order->billing_total }}</p>
                                    </div>
                                </div>
                                <div>
                                    <a href="{{ route('orders.index') }}"  class="min-w-[100px] block text-green-500 text-xl">Back <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="p-5">
                            <table  class="w-[100%] md:w-[50%]">
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">Name</td>
                                    <td class="text-xl text-slate-800">{{ $order->billing_name }}</td>
                                </tr>
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">Address</td>
                                    <td class="text-xl text-slate-800">{{ $order->billing_address }}</td>
                                </tr>
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">City</td>
                                    <td class="text-xl text-slate-800">{{ $order->billing_city }}</td>
                                </tr>
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">Subtotal</td>
                                    <td class="text-xl text-slate-800">${{ $order->billing_subtotal }}</td>
                                </tr>
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">Tax</td>
                                    <td class="text-xl text-slate-800">${{ $order->billing_tax }}</td>
                                </tr>
                                <tr class="border-b">
                                    <td class="text-xl font-semibold text-slate-800">Total</td>
                                    <td class="text-xl text-slate-800">${{ $order->billing_total }}</td>
                                </tr>
                            </table>
                        </div>  
                    </div>

                    <div class="mb-5 rounded border-2">
                        <div class="bg-slate-100 p-5">
                            <div class="flex justify-between items-center">
                             <div>
                                <p  class="min-w-[100px] block text-green-500 text-xl">Order Items</p>
                             </div>
                            </div>
                        </div>
                        <div class="p-5">
                            <div>
                                @foreach ($products as $product)
                                    <div class="flex my-10">                       
                                        <img src="{{ asset('storage/'.$product->image) }}" class="p-3 border rounded w-[20%] md:w-[15%]">
                                        <div class="ml-3">
                                            <a href="{{ route('shop.show',$product->id) }}" class="text-xl font-semibold text-slate-700">{{ $product->name }}</a>
                                            <p class="text-xl font-semibold text-slate-700">${{ $product->price }}</p> 
                                        </div>
                                    </div>                                 
                                @endforeach 
                            </div> 
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
      
        
    </div>
@endsection

