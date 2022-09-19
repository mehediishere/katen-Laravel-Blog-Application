<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategories;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    function index(){
        return view('frontend.pages.index');
    }

    function category(){
        $blogs = Blog::all();
        return view('frontend.pages.category', ['blogs'=>$blogs]);
    }

    function singleCategory($category){
        $blogs = Blog::where('category', $category)->get();
        return view('frontend.pages.single-category', ['blogs'=>$blogs]);
    }

    function createNewPost(){
        $categoryList = BlogCategories::all();
        return view('admin.pages.index', $categoryList);
    }

    function newPost(Request $request){
        $request->validate([
            'title'=>'required',
            'category'=>'required',
            'tags'=>'required',
            'publishDate'=>'required',
            'editordata'=>'required',
        ]);

        $tag = implode(',', $request->input('tags'));

        Blog::create([
            'title'=>$request->input('title'),
            'category'=>$request->input('category'),
            'tags'=>$tag,
            'publish_date'=>$request->input('publishDate'),
            'post_details'=>$request->input('editordata')
        ]);

        return back();
    }

    function blogSingle(){
        return view('frontend.pages.blog-single');
    }

    function singlePost($id, $title){
        $post = Blog::where('id', $id)->first();
        return view('frontend.pages.blog-single', ['post'=>$post]);
    }

    function contact(){
        return view('frontend.pages.contact');
    }

    function about(){
        return view('frontend.pages.about');
    }

    function allPost(){
        $blogs = Blog::all();
        return view('admin.pages.all-posts', ['blogs'=>$blogs]);
    }

}
