<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category; //added
use Nicolaslopezj\Searchable\SearchableTrait; //added
use Laravel\Scout\Searchable; //added

class Product extends Model
{
    use SearchableTrait, Searchable;
    
    protected $fillable = ['quantity'];

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function presentPrice()
    {
       return number_format($this->price,'2','.',',');
    }
    
    protected $searchable = [
         'columns'=>[
           'products.name'=>2,
           'products.details'=>2,
           'products.description'=>2
         ]
    ];

    // the following function from laravel scout used to add more fiels to the algolia index
    public function toSearchableArray()
    {
        $array = $this->toArray();
        $extraFields = [
          'categories' => $this->categories->pluck('name')->toArray()
        ];

        return array_merge($array,$extraFields);
        // Run-> php artisan ecommerce:install
        // to flush our index in algolia and import it again adding the new categories field
    }
}
