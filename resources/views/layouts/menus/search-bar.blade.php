
<div class="search-bar">
 <form action="{{ route('search') }}" method="GET">
    <i class="fas fa-search"></i><input type="search" value="{{ request()->input('query') }}" name="query" placeholder="Search for product">
 </form>
</div>
