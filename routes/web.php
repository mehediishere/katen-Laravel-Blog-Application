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

//Blog
Route::controller(\App\Http\Controllers\BlogController::class)->group(function(){
    Route::get('/', 'index')->name('frontend.index');
    Route::get('/all-posts', 'allCategory')->name('frontend.allpost');
    Route::get('/category/{category}', 'singleCategory')->name('frontend.single.category');
    Route::get('/tag/{tag}', 'tagPosts')->name('frontend.tag.posts');
    Route::get('/single-blog/', 'blogSingle')->name('frontend.blog-single');
    Route::get('/post/{id}/{title}', 'singlePost')->name('frontend.post');
    Route::get('/about', 'about')->name('frontend.about');
    Route::get('/contact', 'contact')->name('frontend.contact');
    Route::get('/search/', 'searchPost')->name('frontend.search');
    Route::get('/adminpage', 'createNewPost')->name('admin.index');
    Route::post('/new-post', 'newPost')->name('new.post');
    Route::get('/all', 'allPost')->name('admin.allpost');
    Route::get('/remove/', 'deletePost')->name('admin.delete.post');
    Route::get('/share/{id}', 'sharePost')->name('frontend.share.post');
});
