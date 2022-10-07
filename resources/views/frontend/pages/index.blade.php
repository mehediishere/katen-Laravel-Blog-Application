@extends('frontend.master')

@section('pagecss')
@endsection

@section('mainContent')
    <!-- hero section -->
    <section id="hero">
        <div class="container-xl">

            <div class="row gy-4">

                <div class="col-lg-8">
                    <!-- featured post large -->
                    <div class="post featured-post-lg">
                        <div class="details clearfix">
                            <a href="{{ route('frontend.single.category', ['category'=>$featurePost->category]) }}" class="category-badge text-capitalize">{{ $featurePost->category }}</a>
                            <h2 class="post-title"><a href="{{ route('frontend.post', ['id'=>$featurePost->id, 'title'=>$featurePost->title]) }}">{{ $featurePost->title }}</a></h2>
                            <ul class="meta list-inline mb-0">
                                <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                                <li class="list-inline-item">{{ date('d M Y', strtotime($featurePost->publish_date)) }}</li>
                            </ul>
                        </div>
                        <a href="{{ route('frontend.post', ['id'=>$featurePost->id, 'title'=>$featurePost->title]) }}">
                            <div class="thumb rounded">
                                <div class="inner data-bg-image" data-bg-image="{{ asset('frontend/images/posts/featured-lg.jpg') }}"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-4">

                    <!-- post tabs -->
                    <div class="post-tabs rounded bordered">
                        <!-- tab navs -->
                        <ul class="nav nav-tabs nav-pills nav-fill" id="postsTab" role="tablist">
                            <li class="nav-item" role="presentation"><button aria-controls="popular" aria-selected="true" class="nav-link active" data-bs-target="#popular" data-bs-toggle="tab" id="popular-tab" role="tab" type="button">Popular</button></li>
                            <li class="nav-item" role="presentation"><button aria-controls="recent" aria-selected="false" class="nav-link" data-bs-target="#recent" data-bs-toggle="tab" id="recent-tab" role="tab" type="button">Recent</button></li>
                        </ul>
                        <!-- tab contents -->
                        <div class="tab-content" id="postsTabContent">
                            <!-- loader -->
                            <div class="lds-dual-ring"></div>
                            <!-- popular posts -->
                            <div aria-labelledby="popular-tab" class="tab-pane fade show active" id="popular" role="tabpanel">
                                <!-- post -->
                                @foreach($popularPosts as $post)
                                <div class="post post-list-sm circle">
                                    <div class="thumb circle">
                                        <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/tabs-1.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">{{ $post->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($post->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                            <!-- recent posts -->
                            <div aria-labelledby="recent-tab" class="tab-pane fade" id="recent" role="tabpanel">
                                <!-- post -->
                                @foreach($recentPosts as $post)
                                <div class="post post-list-sm circle">
                                    <div class="thumb circle">
                                        <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/tabs-2.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">{{ $post->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($post->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <!-- section main content -->
    <section class="main-content">
        <div class="container-xl">

            <div class="row gy-4">

                <div class="col-lg-8">

                    <!-- section header -->
                    <div class="section-header">
                        <h3 class="section-title">Top Pick</h3>
                        <img src="{{ asset('frontend/images/wave.svg') }}" class="wave" alt="wave" />
                    </div>

                    <div class="padding-30 rounded bordered">
                        <div class="row gy-5">
                            <div class="col-sm-6">
                                <!-- post -->
                                <div class="post">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.single.category', ['category'=>$topPickSpecial->category]) }}" class="category-badge position-absolute text-capitalize">{{ $topPickSpecial->category }}</a>
                                        <span class="post-format">
											<i class="icon-picture"></i>
										</span>
                                        <a href="#">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/editor-lg.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <ul class="meta list-inline mt-4 mb-0">
                                        <li class="list-inline-item"><a href="{{ route('frontend.post', ['id'=>$topPickSpecial->id, 'title'=>$topPickSpecial->title]) }}"><img src="{{ asset('frontend/images/other/author-sm.png') }}" class="author" alt="author"/>Katen Doe</a></li>
                                        <li class="list-inline-item">{{ date('d M Y', strtotime($topPickSpecial->publish_date)) }}</li>
                                    </ul>
                                    <h5 class="post-title mb-3 mt-3"><a href="{{ route('frontend.post', ['id'=>$topPickSpecial->id, 'title'=>$topPickSpecial->title]) }}">{{ $topPickSpecial->title }}</a></h5>
                                    <p class="excerpt mb-0">{{ \Illuminate\Support\Str::words(strip_tags($topPickSpecial->post_details), 25, '...') }}</p>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <!-- post -->
                                @foreach($topPick as $post)
                                <div class="post post-list-sm square">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/editor-sm-1.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">{{ $post->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($post->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="spacer" data-height="50"></div>

                    <!-- horizontal ads -->
                    <div class="ads-horizontal text-md-center">
                        <span class="ads-title">- Sponsored Ad -</span>
                        <a href="#">
                            <img src="{{ asset('frontend/images/ads/ad-750.png') }}" alt="Advertisement" />
                        </a>
                    </div>

                    <div class="spacer" data-height="50"></div>

                    <!-- section header -->
                    <div class="section-header">
                        <h3 class="section-title">Trending</h3>
                        <img src="{{ asset('frontend/images/wave.svg') }}" class="wave" alt="wave" />
                    </div>

                    <div class="padding-30 rounded bordered">
                        <div class="row gy-5">
                            <div class="col-sm-6">
                                <!-- post large -->
                                <div class="post">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.single.category', ['category'=>$trending['0']->category]) }}" class="category-badge position-absolute text-capitalize">{{ $trending['0']->category }}</a>
                                        <span class="post-format">
											<i class="icon-picture"></i>
										</span>
                                        <a href="{{ route('frontend.post', ['id'=>$trending['0']->id, 'title'=>$trending['0']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-lg-1.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <ul class="meta list-inline mt-4 mb-0">
                                        <li class="list-inline-item"><a href="#"><img src="{{ asset('frontend/images/other/author-sm.png') }}" class="author" alt="author"/>Katen Doe</a></li>
                                        <li class="list-inline-item">{{ date('d M Y', strtotime($trending['0']->publish_date)) }}</li>
                                    </ul>
                                    <h5 class="post-title mb-3 mt-3"><a href="{{ route('frontend.post', ['id'=>$trending['0']->id, 'title'=>$trending['0']->title]) }}">{{ $trending['0']->title }}</a></h5>
                                    <p class="excerpt mb-0">{{ \Illuminate\Support\Str::words(strip_tags($trending['0']->post_details), 25, '...') }}</p>
                                </div>
                                <!-- post -->
                                <div class="post post-list-sm square before-seperator">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.post', ['id'=>$trending['1']->id, 'title'=>$trending['1']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-sm-1.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$trending['1']->id, 'title'=>$trending['1']->title]) }}">{{ $trending['1']->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($trending['1']->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- post -->
                                <div class="post post-list-sm square before-seperator">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.post', ['id'=>$trending['2']->id, 'title'=>$trending['2']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-sm-2.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$trending['2']->id, 'title'=>$trending['2']->title]) }}">{{ $trending['2']->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($trending['2']->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <!-- post large -->
                                <div class="post">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.single.category', ['category'=>$trending['3']->category]) }}" class="category-badge position-absolute text-capitalize">{{ $trending['3']->category }}</a>
                                        <span class="post-format">
											<i class="icon-earphones"></i>
										</span>
                                        <a href="{{ route('frontend.post', ['id'=>$trending['3']->id, 'title'=>$trending['3']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-lg-2.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <ul class="meta list-inline mt-4 mb-0">
                                        <li class="list-inline-item"><a href="#"><img src="{{ asset('frontend/images/other/author-sm.png') }}" class="author" alt="author"/>Katen Doe</a></li>
                                        <li class="list-inline-item">{{ date('d M Y', strtotime($trending['3']->publish_date)) }}</li>
                                    </ul>
                                    <h5 class="post-title mb-3 mt-3"><a href="{{ route('frontend.post', ['id'=>$trending['3']->id, 'title'=>$trending['3']->title]) }}">{{ $trending['3']->title }}</a></h5>
                                    <p class="excerpt mb-0">{{ \Illuminate\Support\Str::words(strip_tags($trending['3']->post_details), 25, '...') }}</p>
                                </div>
                                <!-- post -->
                                <div class="post post-list-sm square before-seperator">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.post', ['id'=>$trending['4']->id, 'title'=>$trending['4']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-sm-3.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$trending['4']->id, 'title'=>$trending['4']->title]) }}">{{ $trending['4']->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($trending['4']->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- post -->
                                <div class="post post-list-sm square before-seperator">
                                    <div class="thumb rounded">
                                        <a href="{{ route('frontend.post', ['id'=>$trending['5']->id, 'title'=>$trending['5']->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/trending-sm-4.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details clearfix">
                                        <h6 class="post-title my-0"><a href="{{ route('frontend.post', ['id'=>$trending['5']->id, 'title'=>$trending['5']->title]) }}">{{ $trending['5']->title }}</a></h6>
                                        <ul class="meta list-inline mt-1 mb-0">
                                            <li class="list-inline-item">{{ date('d M Y', strtotime($trending['5']->publish_date)) }}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="spacer" data-height="50"></div>

                    <!-- section header -->
                    <div class="section-header">
                        <h3 class="section-title">Technology</h3>
                        <img src="{{ asset('frontend/images/wave.svg') }}" class="wave" alt="wave" />
                        <div class="slick-arrows-top">
                            <button type="button" data-role="none" class="carousel-topNav-prev slick-custom-buttons" aria-label="Previous"><i class="icon-arrow-left"></i></button>
                            <button type="button" data-role="none" class="carousel-topNav-next slick-custom-buttons" aria-label="Next"><i class="icon-arrow-right"></i></button>
                        </div>
                    </div>

                    <div class="row post-carousel-twoCol post-carousel">
                        <!-- post -->
                        @foreach($technology as $post)
                        <div class="post post-over-content col-md-6">
                            <div class="details clearfix">
                                <a href="{{ route('frontend.single.category', ['category'=>$post->category]) }}" class="category-badge text-capitalize">{{ $post->category }}</a>
                                <h4 class="post-title"><a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">{{ $post->title }}</a></h4>
                                <ul class="meta list-inline mb-0">
                                    <li class="list-inline-item"><a href="#">Katen Doe</a></li>
                                    <li class="list-inline-item">{{ date('d M Y', strtotime($post->publish_date)) }}</li>
                                </ul>
                            </div>
                            <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">
                                <div class="thumb rounded">
                                    <div class="inner">
                                        <img src="{{ asset('frontend/images/posts/inspiration-1.jpg') }}" alt="thumb" />
                                    </div>
                                </div>
                            </a>
                        </div>
                        @endforeach
                    </div>

                    <div class="spacer" data-height="50"></div>

                    <!-- section header -->
                    <div class="section-header">
                        <h3 class="section-title">Latest Posts</h3>
                        <img src="{{ asset('frontend/images/wave.svg') }}" class="wave" alt="wave" />
                    </div>

                    <div class="padding-30 rounded bordered">

                        <div class="row">
                            @foreach($latestPosts as $post)
                            <div class="col-md-12 col-sm-6">
                                <!-- post -->
                                <div class="post post-list clearfix">
                                    <div class="thumb rounded">
										<span class="post-format-sm">
											<i class="icon-picture"></i>
										</span>
                                        <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">
                                            <div class="inner">
                                                <img src="{{ asset('frontend/images/posts/latest-sm-1.jpg') }}" alt="post-title" />
                                            </div>
                                        </a>
                                    </div>
                                    <div class="details">
                                        <ul class="meta list-inline mb-3">
                                            <li class="list-inline-item"><a href="#"><img src="{{ asset('frontend/images/other/author-sm.png') }}" class="author" alt="author"/>Katen Doe</a></li>
                                            <li class="list-inline-item text-capitalize"><a href="{{ route('frontend.single.category', ['category'=>$post->category]) }}">{{ $post->category }}</a></li>
                                            <li class="list-inline-item">{{ \Carbon\Carbon::parse($post->publish_date)->format('d M Y') }}</li>
                                        </ul>
                                        <h5 class="post-title"><a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}">{{ $post->title }}</a></h5>
                                        <p class="excerpt mb-0">{{ \Illuminate\Support\Str::words(strip_tags($post->post_details), 15, '...') }}</p>
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
                                                <a href="{{ route('frontend.post', ['id'=>$post->id, 'title'=>$post->title]) }}"><span class="icon-options"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach

                        </div>
                        <!-- load more button -->
                        <div class="text-center">
                            <button class="btn btn-simple">Load More</button>
                        </div>

                    </div>

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
