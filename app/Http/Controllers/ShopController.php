<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {  
        $categories = Category::all();

        if(request()->category)
        {
            $products = Product::with('categories')->whereHas('categories',function($query){
                $query->where('slug',request()->category);
            });
            $category_name = optional($categories->where('slug',request()->category)->first())->name; //optional() function checks if what is returned is null incase an invalid category is passed
        }
        else
        {
            $products = Product::where('featured',true);
            $category_name = "Featured";
        } 
        if(request()->sort == 'low-high')
        {
            $products = $products->orderBy('price')->paginate(6);
        }
        elseif(request()->sort == 'high-low')
        {
            $products = $products->orderBy('price','desc')->paginate(6);
        }
        else
        {
            $products = $products->paginate(6);
        }
        return view('web.shop',['products'=>$products,'categories'=>$categories,'category_name'=>$category_name]);
    }



    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        $related_products = Product::where('id','!=', $product->id)->inRandomOrder()->take(4)->get();

        // stock functionality
        // this-> setting('site.stock_threshold') is coming from voyager's site settings and it is set to 5
        $stockLevel = getStockLevel($product->quantity);

        return view('web.product',['product'=>$product,'related_products'=>$related_products,'stockLevel'=>$stockLevel]);
    }

    public function search(Request $request)
    {
        $request->validate([
           'query'=> ['required','min:3']
        ]);

        $query = $request->input('query');

        // Manual search method
        // $products = Product::where('name', 'like', "%$query%")
        // ->orWhere('details', 'like', "%$query%")
        // ->orWhere('description', 'like', "%$query%")
        // ->paginate(10);

        $products = Product::search($query)->paginate(10);
        return view("web.search-results",['products'=>$products]);
    }
    public function searchPage()
    {
        
        return view("web.search-page");
    }
}
