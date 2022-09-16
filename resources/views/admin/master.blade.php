<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TechToe - A Blog For Tech</title>
    <meta name="description" content="TechToe - A Blog For Tech">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('frontend/images/favicon.png') }}">

    {{-- STYLES --}}
    <link rel="stylesheet" href="{{ asset('admin/vendor/select2/css/select2.min.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('admin/vendor/summernote/summernote-lite.css') }}" type="text/css" media="all">
    <link rel="stylesheet" href="{{ asset('admin/css/bootstrap.min.css') }}" type="text/css" media="all">

    {{-- CUSTOM PAGE STYLE --}}
    @yield('page-css')
</head>
<body>

    @yield('mainContent')

    {{-- JS --}}
    <script src="{{ asset('admin/js/jquery.min.js') }}"></script>
    <script src="{{ asset('admin/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('admin/vendor/summernote/summernote-lite.js') }}"></script>
    <script src="{{ asset('admin/vendor/select2/js/select2.min.js') }}"></script>

    {{-- CUSTOM PAGE JS --}}
    @yield('page-js')
</body>
</html>
