<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TechToe - A Blog For Tech</title>
    <meta name="description" content="TechToe - A Blog For Tech">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('images/favicon.png') }}">

    {{-- STYLES --}}
    <link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('frontend/css/all.min.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('frontend/css/slick.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('frontend/css/simple-line-icons.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}" type="text/css" media="all">
    {{-- CUSTOM PAGE STYLE --}}
    @yield('pagecss')
</head>
<body>
    <!-- site wrapper -->
    <div class="site-wrapper">
        <div class="main-overlay"></div>
        @include('frontend.layouts.preloader')
        @include('frontend.layouts.top_nav')
        @yield('mainContent')
        @include('frontend.layouts.instagram_feed')
        @include('frontend.layouts.footer')
    </div>
    <!-- end site wrapper -->
    @include('frontend.layouts.search_popup')
    @include('frontend.layouts.canvas_menu')
    {{-- JS --}}
    <script src="{{ asset('frontend/js/jquery.min.js') }}"></script>
    <script src="{{ asset('frontend/js/popper.min.js') }}"></script>
    <script src="{{ asset('frontend/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/js/slick.min.js') }}"></script>
    <script src="{{ asset('frontend/js/jquery.sticky-sidebar.min.js') }}"></script>
    <script src="{{ asset('frontend/js/custom.js') }}"></script>
    {{-- CUSTOM PAGE JS --}}
    @yield('pagejs')
</body>
</html>
