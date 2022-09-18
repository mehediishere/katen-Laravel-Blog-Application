<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () { return view('frontend.pages.index'); });
//Route::get('/category', function () { return view('frontend.pages.category'); });
//Route::get('/blog', function () { return view('frontend.pages.blog-single'); });
//Route::get('/about', function () { return view('frontend.pages.about'); });
//Route::get('/contact', function () { return view('frontend.pages.contact'); });
//
//Route::get('/cn', function () { return view('admin.pages.index'); });
//Route::get('/blog-list', function () { return view('admin.pages.blog-list'); });

//Blog
Route::controller(\App\Http\Controllers\BlogController::class)->group(function(){
    Route::get('/', 'index')->name('frontend.index');
    Route::get('/category', 'category')->name('frontend.category');
    Route::get('/single-blog', 'blogSingle')->name('frontend.blog-single');
    Route::get('/about', 'about')->name('frontend.about');
    Route::get('/contact', 'contact')->name('frontend.contact');

    Route::get('/create-new-post', 'createNewPost')->name('admin.index');
    Route::post('/new-post', 'newPost')->name('new.post');

});
