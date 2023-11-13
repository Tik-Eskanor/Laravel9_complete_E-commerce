@extends('layouts.web')
  @section('content')
    <section class="thank-you">
        <div class="container">
            <div class="row">
              <div class="col-3">
                  <h1>Thank you for your order!</h1>
                  <p>A confirmation email was sent</p>
                  <div class="btn-wrapper">
                      <a href="{{ route('home') }}" class="btn">HOME PAGE</a>
                  </div>
              </div>
            </div>
        </div>
    </section> 
@endsection

