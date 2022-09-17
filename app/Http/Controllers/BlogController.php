<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    function index(){
        return view('frontend.pages.index');
    }

    function category(){
        return view('frontend.pages.category');
    }

    function createNewPost(){
        return view('admin.pages.index');
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

}
