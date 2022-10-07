<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Tags;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\File;

class BlogController extends Controller
{
    function index(){
        $popularPosts = Blog::orderBy('view_count', 'desc')->limit(4)->get();
        $recentPosts = Blog::orderBy('id', 'desc')->limit(4)->get();
        $featurePost = Blog::orderBy('id', 'desc')->first();
        $topPickSpecial = Blog::orderBy('view_count', 'desc')->first();
        $topPick = Blog::orderBy('view_count', 'desc')->skip(1)->take(4)->get();
        $trending = Blog::inRandomOrder()->limit(6)->get();
        $technology = Blog::where('category', 'technology')->orderBy('id', 'desc')->limit(6)->get();
        $latestPosts = Blog::orderBy('id', 'desc')->limit(6)->get();
        return view('frontend.pages.index',[
            'popularPosts'=>$popularPosts,
            'recentPosts'=>$recentPosts,
            'featurePost'=>$featurePost,
            'topPickSpecial'=>$topPickSpecial,
            'topPick'=>$topPick,
            'trending'=>$trending,
            'technology'=>$technology,
            'latestPosts'=>$latestPosts,
        ]);
    }

    function allCategory(){
        $blogs = Blog::orderBy('id', 'desc')->paginate(6);
        return view('frontend.pages.all-posts', ['blogs'=>$blogs]);
    }

    function singleCategory($category){
        $blogs = Blog::where('category', $category)->orderBy('id', 'desc')->paginate(6);
        return view('frontend.pages.search-posts', ['blogs'=>$blogs]);
    }

    function tagPosts($tag){
        $blogs = Blog::where('tags', 'LIKE', '%'.$tag.'%')->orderBy('id', 'desc')->paginate(6);
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

    function singlePost($id){
        $post = Blog::find($id);

        if(Cookie::has('readPost')){
            if(Cookie::get('readPost') != $post->id){
//                Blog::where('id', $id)->update(['view_count'=>$post->view_count+1]);
//                or
                Blog::find($id)->increment('view_count');
                Cookie::queue('readPost', $post->id, 10);
            }
        }else{
            Blog::find($id)->increment('view_count');
            Cookie::queue('readPost', $post->id, 10);
        }

//        $post = Blog::where('id', $id)->first(); // Getting updated result
//        or
        $post = Blog::find($id);

        return view('frontend.pages.blog-single', ['post'=>$post]);

    }

    function contact(){
        return view('frontend.pages.contact');
    }

    function about(){
        return view('frontend.pages.about');
    }

    function allPost(){
        $blogs = Blog::orderBy('id', 'desc')->paginate(10);
        return view('admin.pages.blog-list', ['blogs'=>$blogs]);
    }

    function searchPost(Request $request){
        $search = $request->for;
        $result = Blog::where('title', 'like', '%'.$search.'%')->orWhere('category', 'like', '%'.$search.'%')->orWhere('tags', 'like', '%'.$search.'%')->paginate(10);
        return view('frontend.pages.search-posts', ['blogs'=>$result]);
    }

    function deletePost(Request $request){
        if(File::exists(public_path('frontend/blog_feature/'.$request->image)) ) {
            File::delete(public_path('frontend/blog_feature/'.$request->image));
        }
        Blog::where('id', $request->id)->delete();
        return back();
    }

}
