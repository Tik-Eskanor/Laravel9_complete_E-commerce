<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Eco Store</title>
    {{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/instantsearch.css@8.1.0/themes/satellite-min.css" integrity="sha256-p/rGN4RGy6EDumyxF9t7LKxWGg6/MZfGhJM/asKkqvA=" crossorigin="anonymous"> --}}

    @vite(['resources/css/app.css',
            'resources/css/all.min.css', 
            'resources/css/owl.carousel.min.css',
            'resources/css/owl.theme.default.min.css',
            'resources/css/algolia.css',
            'resources/css/style.css',
            'resources/js/jquery.min.js',
            'resources/js/owl.carousel.min.js',
            'resources/js/main.js',
            'resources/js/algolia.js',
            'resources/js/app.js',
            'resources/js/charge.js',
   ])
</head>
<body>
   <header>
       <div class="container">
           <div class="wrapper">
             <a href="/" class="logo">Eco <span>Store</span></a>  
            <nav>
                <div class="content">
                    {{ menu('main','layouts.menus.main') }}
                </div> 
            </nav> 
            @include('layouts.menus.auth')
           @include('layouts.menus.mobile_menu')
           @include('layouts.menus.menu_toggle')
           </div>    
       </div>
   </header> 
   
   <main>
       @yield('content')
   </main>

   <footer>
    <div class="container">
        <div class="row-footer">
            <div class="col-4">
                <h1>Eco Store</h1>
                <p class="para-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, rerum! Delectus dicta omnis perspiciatis soluta ipsa, eligendi maiores modi. Fuga?</p>
            </div>
            <div class="col-4">
                <h4>Designed By</h4>
                <h1>Eskanor</h1>
                <div class="icon-container">
                    <a href="" class="fab fa-facebook"></a>
                    <a href="" class="fab fa-instagram"></a>
                    <a href="" class="fab fa-twitter"></a>
                    <a href="" class="fab fa-linkedin"></a>
                </div>
            </div>
        </div>
    </div>
   </footer>
{{-- <script src="https://cdn.jsdelivr.net/npm/algoliasearch@4.20.0/dist/algoliasearch-lite.umd.js" integrity="sha256-DABVk+hYj0mdUzo+7ViJC6cwLahQIejFvC+my2M/wfM=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/instantsearch.js@4.58.0/dist/instantsearch.production.min.js" integrity="sha256-IldlBIzcOLJCgPJdBbkRKOkajl4luaY/JtDMglPneks=" crossorigin="anonymous"></script> --}}

<script src="https://js.stripe.com/v3/"></script>


</body>
</html>