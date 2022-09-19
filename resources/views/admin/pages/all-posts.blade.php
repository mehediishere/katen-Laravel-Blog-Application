@extends('admin.master')

@section('page-css')
@endsection

@section('mainContent')
<main class="container">
    <div class="row mt-2">
        @foreach($blogs as $blog)
        <div class="col-3 mb-2">
            <div class="card h-100">
                <img src="frontend/images/posts/featured-lg.jpg" class="card-img-top" alt="featured-img">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title fw-bold" style="color: #203656">{{ $blog->title }}</h5>
                    <div class="card-text">{!! substr($blog->post_details, 0, 90) !!}</div><br>
                    <div class="mt-auto">
                        <a href="#" class="btn text-white" style="background: linear-gradient(to right, #FE4F70 0%, #FFA387 100%);">Read More</a>
                        <a href="#" class="btn btn-danger">Remove</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</main>
@endsection

@section('page-js')
@endsection
