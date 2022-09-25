@extends('admin.master')

@section('page-css')
@endsection

@section('mainContent')
<main class="container">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Title</th>
            <th scope="col">Category</th>
            <th scope="col">Tags</th>
            <th scope="col">Publish Date</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($blogs as $blog)
        <tr>
            <th scope="row">{{ $blog->id }}</th>
            <td>{{ $blog->title }}</td>
            <td>{{ $blog->category }}</td>
            <td>{{ $blog->tags }}</td>
            <td>{{ $blog->publish_date }}</td>
            <td><a href="{{ route('admin.delete.post',['id'=> $blog->id, 'image'=> $blog->feature_image]) }}" class="text-decoration-none">Delete</a></td>
        </tr>
        @endforeach
        </tbody>
    </table>
    {{ $blogs->links('vendor.pagination.bootstrap-5') }}
</main>
@endsection

@section('page-js')
@endsection
