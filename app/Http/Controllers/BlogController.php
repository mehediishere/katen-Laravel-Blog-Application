<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategories;
use App\Models\Tags;
use Illuminate\Http\Request;
use Symfony\Component\Console\Input\Input;

class BlogController extends Controller
{
    function index(){
        return view('frontend.pages.index');
    }

    function allCategory(){
        $blogs = Blog::orderBy('id', 'desc')->paginate(4);
        return view('frontend.pages.all-posts', ['blogs'=>$blogs]);
    }

    function singleCategory($category){
        $blogs = Blog::where('category', $category)->orderBy('id', 'desc')->paginate(4);
        return view('frontend.pages.search-posts', ['blogs'=>$blogs]);
    }

    function tagPosts($tag){
        $blogs = Blog::where('tags', 'LIKE', '%'.$tag.'%')->orderBy('id', 'desc')->paginate(4);
        return view('frontend.pages.search-posts', ['blogs'=>$blogs]);
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
            'uploadFile'=>'nullable|image|mimes:jpg,png,jpeg,gif,svg|max:2048'
        ]);

        if(!empty($request->uploadFile)){
            $imageName = rand(111, 9999).preg_replace("/\s+/", "", $request->title).'.'.$request->uploadFile->extension();
            $request->uploadFile->move(public_path('frontend/blog_feature'), $imageName);
        }else{
            $imageName = null;
        }

        foreach ($request->tags as $tag){
            $check = Tags::where('tag', $tag)->first(); // This will return `true` if found, otherwise `false`
            if(!$check){
                Tags::create([
                    'tag' => $tag,
                    'total' => 1
                ]);
            }else{
                Tags::where('tag', $tag)->increment('total', 1);
            }
        }

        $tag = implode(',', $request->input('tags'));

        Blog::create([
            'title'=>$request->input('title'),
            'category'=>$request->input('category'),
            'tags'=>$tag,
            'publish_date'=>$request->input('publishDate'),
            'post_details'=>$request->input('editordata'),
            'feature_image'=>$imageName
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

    function searchPost(Request $request){
        $search = $request->for;
        $result = Blog::where('title', 'like', '%'.$search.'%')->orWhere('category', 'like', '%'.$search.'%')->orWhere('tags', 'like', '%'.$search.'%')->paginate(10);
        return view('frontend.pages.search-posts', ['blogs'=>$result]);

    }

}
