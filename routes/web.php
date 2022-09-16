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

Route::get('/', function () { return view('frontend.pages.index'); });
Route::get('/category', function () { return view('frontend.pages.category'); });
Route::get('/blog', function () { return view('frontend.pages.blog-single'); });
Route::get('/about', function () { return view('frontend.pages.about'); });
Route::get('/contact', function () { return view('frontend.pages.contact'); });

Route::get('/cn', function () { return view('admin.pages.index'); });
