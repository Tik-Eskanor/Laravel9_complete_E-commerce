import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/css/app.css',
            'resources/css/all.min.css', 
            'resources/css/owl.carousel.min.css',
            'resources/css/owl.theme.default.min.css',
            'resources/css/style.css',
            'resources/css/algolia.css',
            'resources/js/jquery.min.js',
            'resources/js/owl.carousel.min.js',
            'resources/js/main.js',
            'resources/js/algolia.js',
            'resources/js/app.js',
            'resources/js/charge.js',
           ],
            refresh: true,
        }),
    ],
});
