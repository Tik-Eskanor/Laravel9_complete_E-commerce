@extends('layouts.web')
 @section('content')

    <div class="py-12">
        <div class="container">
            <div class="row-stretch">
                <div class="col-3">
                    <ul class="text-center  text-xl font-semibold">
                        <li class="mb-3 text-slate-800"><a href="{{ route('profile.edit') }}">My Profile</a> </a></li>
                        <li class="text-slate-700"><a href="{{ route('orders.index') }}">My Orders</a> </a></li>
                    </ul>
                </div>
                <div class="col-8">
                    <div class="subtitle">
                        <h1>My Profile</h1>
                    </div>
                    @include('profile.partials.update-profile-information-form')
                    <div class="my-16">
                        @include('profile.partials.update-password-form')
                    </div>
                    <div class="">
                        @include('profile.partials.delete-user-form')
                    </div>
                </div>
            </div>
        </div>
      
        
    </div>
@endsection

