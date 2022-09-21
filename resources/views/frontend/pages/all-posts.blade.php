@extends('frontend.master')

@section('pagecss')
@endsection

@section('mainContent')
    <!-- section main content -->
    <section class="main-content">
        <div class="container-xl">

            <div class="row gy-4">
                <div class="col-lg-8">

                    <div class="row gy-4">
                        @foreach($blogs as $blog)
                        <div class="col-sm-6">
                            <!-- post -->
                            <div class="post post-grid rounded bordered">
                                <div class="thumb top-rounded">
                                    <a href="category.html" class="category-badge position-absolute text-capitalize">{{ $blog->category }}</a>
                                    <span class="post-format">
                                        <i class="icon-picture"></i>
                                    </span>
                                    <a href="blog-single.html">
                                        <div class="inner">
                                            <img src="frontend/images/posts/post-md-1.jpg" alt="post-title" />
                                        </div>
                                    </a>
                                </div>
                                <div class="details">
                                    <ul class="meta list-inline mb-0">
                                        <li class="list-inline-item"><a href="#"><img src="frontend/images/other/author-sm.png" class="author" alt="author"/>Katen Doe</a></li>
                                        <li class="list-inline-item">{{ date('d M Y', strtotime($blog->publish_date)) }}</li>
                                    </ul>
                                    <h5 class="post-title mb-3 mt-3"><a href="{{ route('frontend.post', ['title'=>$blog->title, 'id'=>$blog->id]) }}">{{ $blog->title }}</a></h5>
                                    <p class="excerpt mb-0">{{ \Illuminate\Support\Str::words(strip_tags($blog->post_details), 25, '...') }}</p>
                                </div>
                                <div class="post-bottom clearfix d-flex align-items-center">
                                    <div class="social-share me-auto">
                                        <button class="toggle-button icon-share"></button>
                                        <ul class="icons list-unstyled list-inline mb-0">
                                            <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                            <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                                            <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                            <li class="list-inline-item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                                            <li class="list-inline-item"><a href="#"><i class="fab fa-telegram-plane"></i></a></li>
                                            <li class="list-inline-item"><a href="#"><i class="far fa-envelope"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="more-button float-end">
                                        <a href="blog-single.html"><span class="icon-options"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>

                    <!-- Pagination -->
                    {{ $blogs->links('frontend.layouts.pagination') }}

                </div>
                <div class="col-lg-4">
                    <!-- sidebar -->
                    @include('frontend.layouts.sidebar')
                </div>
            </div>

        </div>
    </section>
@endsection

@section('pagejs')
@endsection
