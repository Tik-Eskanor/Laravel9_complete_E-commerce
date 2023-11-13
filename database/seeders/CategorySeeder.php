<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;


class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'name'=>'Laptops',
            'slug'=>'laptops'
        ]);

        Category::create([
            'name'=>'Desktops',
            'slug'=>'desktops'
        ]);

        Category::create([
            'name'=>'Mobile phones',
            'slug'=>'mobile-phones'
        ]);
        
        Category::create([
            'name'=>'Tablets',
            'slug'=>'tablets'
        ]);
        
        Category::create([
            'name'=>"Tv's",
            'slug'=>"tvs",
        ]);

        
        Category::create([
            'name'=>'Camerals',
            'slug'=>'camerals'
        ]);

        Category::create([
            'name'=>'Head phones',
            'slug'=>'head-phone'
        ]);
    }
}
