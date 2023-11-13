@extends('layouts.web')
 @section('content')
  <section class="products-search">
      <div class="container">
        <div class="row-stretch">
            <div class="col-4">
                <div class="subtitle">
                    <h1>Search results</h1>
                </div>
                <div id="searchbox" ></div> 
                <div id="stats-container"></div> 
                <h3 class="text-2xl mb-3 text-black">Categories</h3>
                <div id="refinement-list"></div> 
            </div>
            <div class="col-7">
                <div class="right-panel">
                    <div id="hits"></div>
                    <div id="pagination"></div>
                </div>
            </div>
        </div>
        
      </div>
  </section>
 @endsection

