<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::create([
            'name'=>'Desktop Max',
            'slug'=>'p1.png',
            'details'=>'15 inch,max sound',
            'price'=>249,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(2);

        Product::create([
            'name'=>'Headphone 360',
            'slug'=>'p2.png',
            'details'=>'1 inch,max sound',
            'price'=>139,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Cam Capsule 15',
            'slug'=>'p3.png',
            'details'=>'1 inch,360 brightness',
            'price'=>400,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'Desktop pro',
            'slug'=>'p4.png',
            'details'=>'12 inch,mega sound',
            'price'=>2500,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(2);

        Product::create([
            'name'=>'Spyral Set 480',
            'slug'=>'p5.png',
            'details'=>'Max sound, TB SSD, 32GB RAM',
            'price'=>150,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Cam HD 10,00',
            'slug'=>'p6.jpg',
            'details'=>'2 inch, 360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>450,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'DELL Icon Elite',
            'slug'=>'p7.png',
            'details'=>'12 inch, 12GB RAM, 30GB INTERNAL',
            'price'=>400,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(1);

        Product::create([
            'name'=>'Head phone Neava',
            'slug'=>'p8.png',
            'details'=>'Ma sound, 12GB RAM, 30GB INTERNAL',
            'price'=>450,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Samsung A1',
            'slug'=>'p9.png',
            'details'=>'3 inch, 6GB RAM, 60GB INTERNAL',
            'price'=>500,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);

        Product::create([
            'name'=>'Spyral 850 Max',
            'slug'=>'p10.png',
            'details'=>'2 inch, 2GB RAM, 3GB INTERNAL',
            'price'=>700,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Spyral 9000 Pro',
            'slug'=>'p11.png',
            'details'=>'Max sound, 3GB RAM, 7GB INTERNAL',
            'price'=>100,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Omega 5010',
            'slug'=>'p12.png',
            'details'=>'Minimun sound, 2GB RAM, 3GB INTERNAL',
            'price'=>700,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Spyral 1810 Auto',
            'slug'=>'p13.png',
            'details'=>'2 inch, 2GB RAM, Max sound',
            'price'=>500,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Mini Spyral A08',
            'slug'=>'p14.png',
            'details'=>'2 inch, 1GB RAM, 2GB INTERNAL',
            'price'=>630,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'Omega mini 9',
            'slug'=>'p15.png',
            'details'=>'Max sound, 2GB RAM, 10GB INTERNAL',
            'price'=>790,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);

        Product::create([
            'name'=>'CC Cam 360',
            'slug'=>'p16.png',
            'details'=>'Max brightness 10GB INTERNAL',
            'price'=>150,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'HD Para screen',
            'slug'=>'p17.png',
            'details'=>'10 inch, 360 brightness',
            'price'=>1090,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(5);

        Product::create([
            'name'=>'North 9',
            'slug'=>'p18.png',
            'details'=>'Max sound, 2GB RAM, 10GB INTERNAL',
            'price'=>190,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(7);


        Product::create([
            'name'=>'DELL HD Hybrid',
            'slug'=>'p20.png',
            'details'=>'I-core, 9GB RAM, 490GB INTERNAL',
            'price'=>1790,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(1);

        Product::create([
            'name'=>'DELL Elite Book 8',
            'slug'=>'p21.png',
            'details'=>'I-core, 10GB RAM, 650GB INTERNAL',
            'price'=>2000,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(1);

        Product::create([
            'name'=>'HP Accurate Elite',
            'slug'=>'p22.png',
            'details'=>'I-core, 10GB RAM, 650GB INTERNAL',
            'price'=>2300,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(1);

        Product::create([
            'name'=>'Lenovo  Max',
            'slug'=>'p23.png',
            'details'=>'3 inch, 12MP, 12GB RAM, 30GB INTERNAL',
            'price'=>1800,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);

        Product::create([
            'name'=>'HP Max Elite12',
            'slug'=>'p26.png',
            'details'=>'I-core, 10GB RAM, 650GB INTERNAL',
            'price'=>900,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(1);

        Product::create([
            'name'=>'Pramount HD 800',
            'slug'=>'p27.png',
            'details'=>'10 inch, 3D screen, 270 brightness',
            'price'=>2000,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(5);

        Product::create([
            'name'=>'Cam HH mini',
            'slug'=>'p28.png',
            'details'=>'2 inch, 360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>380,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);
        
        Product::create([
            'name'=>'Samsung 3D',
            'slug'=>'p29.png',
            'details'=>'10 inch, 3D screen, 270 brightness',
            'price'=>3100,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);

        Product::create([
            'name'=>'Nikon 480',
            'slug'=>'p30.png',
            'details'=>'10 inch, 3D screen, 270 brightness',
            'price'=>3100,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'CC Cam Night Duty',
            'slug'=>'p31.png',
            'details'=>'360 Night vision, 12GB RAM, 30GB INTERNAL',
            'price'=>1200,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'Piko Cam 9',
            'slug'=>'p33.png',
            'details'=>'360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>100,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);

        Product::create([
            'name'=>'Samsung A1 Tablet',
            'slug'=>'p35.png',
            'details'=>'4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>540,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(4);

        Product::create([
            'name'=>'Elite Camera',
            'slug'=>'p37.png',
            'details'=>'4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>300,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(6);


        Product::create([
            'name'=>'Tecno tab Pro',
            'slug'=>'p40.png',
            'details'=>'5inch, 13MP, 5GB RAM, 42GB INTERNAL',
            'price'=>1700,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(4);

        Product::create([
            'name'=>'Infinix S15',
            'slug'=>'p42.jpg',
            'details'=>'2inch, 20MP, 7GB RAM, 64GB INTERNAL',
            'price'=>970,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);

        Product::create([
            'name'=>'Iphone 12 Max',
            'slug'=>'p43.png',
            'details'=>'2inch, 24MP, 7GB RAM, 20GB INTERNAL',
            'price'=>1070,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);

        Product::create([
            'name'=>'Tecno k60',
            'slug'=>'p44.png',
            'details'=>'2 inch, 4GB RAM, 50GB INTERNAL',
            'price'=>790,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(3);


        Product::create([
            'name'=>'3D Sharp 260',
            'slug'=>'p50.png',
            'details'=>'4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL',
            'price'=>1500,
            'description'=>'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!'
        ])->categories()->attach(5);


        
        $product30 = Product::find(30);
        $product30->categories()->attach(3);
        $product32 = Product::find(32);
        $product32->categories()->attach(3);
    }
}
