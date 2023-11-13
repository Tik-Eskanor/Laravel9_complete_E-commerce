<div class="main-menu">
  <ul>
    @foreach ($items  as $menu_item)
      <li>
          <a href="{{ $menu_item->link() }}" class="flex items-center">
              @if ($menu_item->title == 'Cart')
                <span>{{ $menu_item->title }}</span>
                @if (Cart::instance('default')->count() > 0)
                  <span class="count">{{ Cart::instance('default')->count() }}</span>
                @endif
              @else
              {{ $menu_item->title }}
              @endif
          </a>
      </li>
      
    @endforeach 
    <li>
      <a href="" class="flex items-center saved" alt="wishlist"> Whishlist
        @if (Cart::instance('saved')->count() > 0)
        <span class="count">{{ Cart::instance('saved')->count() }}</span>
        @endif
      </a>
    </li>
    <li>
      <a href="{{ route('search-page') }}" class="fas fa-search search-icon"></a>
      </a>
    </li>
  </ul>
@include('layouts.menus.search-bar')
</div>



{{-- {{ menu('main') }} --}}

{{-- <ul>
    <li><a href="{{ route('home') }}">Home</a></li>
    <li><a href="{{ route('shop.index') }}">Shop</a></li>
    <li><a href="">About</a></li>
    <li><a href="">Blog</a></li>
    <li>
      <a href="{{ route('cart.index') }}"><span>Cart</span>
       @if (Cart::instance('default')->count() > 0)
       <span class="count">{{ Cart::instance('default')->count() }}</span>
       @endif
      </a>
     </li>
</ul> --}}