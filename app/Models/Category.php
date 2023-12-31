<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\product;

class Category extends Model
{
    protected $table = "category";
    public function products()
    {
        return $this->belongsToMany(Product::class);
    }
}
