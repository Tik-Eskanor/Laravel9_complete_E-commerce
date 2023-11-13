<div class="auth-menu">
    <ul>
      @auth
       <li>
          <a href="{{ route('profile.edit') }}">My Account</a> 
       </li>
       <li>
           <small class="block font-bold uppercase">{{ auth()->user()->name }}</small>
            <!-- Authentication -->
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <x-dropdown-link :href="route('logout')"
                        onclick="event.preventDefault();
                                    this.closest('form').submit();">
                    {{ __('LOGOUT') }}
                </x-dropdown-link>
            </form>
        </li>  
       @else 
       <li><a href="{{ route('register') }}">SIGNUP</a></li>
       <li><a href="{{ route('login') }}">LOGIN</a></li>
      @endauth
    </ul>
 </div>
