@extends('admin.master')

@section('page-css')
@endsection

@section('mainContent')
<main class="container">
    <form action="{{ route('new.post') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <div class="px-5">
            <h3 class="text-uppercase fw-bold" style="color: #203656">New Post</h3>
            <input type="text" class="form-control" name="title" placeholder="Title" value="{{ old('title') }}">
            <span class="text-danger">@error('title') {{ $message }} @enderror</span>
            <div class="my-2">
                @php
                    $cat = getCategory();
                @endphp
                <select class="select2category form-control" name="category">
                    <option value="{{ old('category') }}">{{ old('category') }}</option>
                    @foreach($cat as $item)
                        <option value="{{ $item }}">{{ $item }}</option>
                    @endforeach
                </select>
                <span class="text-danger">@error('category') {{ $message }} @enderror</span>
            </div>
            <select class="select2tags form-control" name="tags[]" multiple="multiple">
                <option></option>
                @php $tags = getTags(); @endphp
                @foreach ($tags as $tag)
                <option value="{{ $tag->tag }}">{{ $tag->tag }} ({{ $tag->total }})</option>
                @endforeach
            </select>
            <span class="text-danger">@error('tags') {{ $message }} @enderror</span>
            <input type="date" class="form-control my-2" name="publishDate" value="{{ old('publishDate') }}">
            <span class="text-danger">@error('publishDate') {{ $message }} @enderror</span>
            <input class="form-control" type="file" id="formFile" name="uploadFile">
            <span class="text-danger">@error('uploadFile') {{ $message }} @enderror</span><br>
            <textarea id="summernote" name="editordata">{{ old('editordata') }}</textarea>
            <span class="text-danger">@error('editordata') {{ $message }} @enderror</span><br>
            <button class="btn rounded-pill text-white fw-bold mt-2" style="background: linear-gradient(to right, #FE4F70 0%, #FFA387 100%);">PUBLISH</button>
        </div>
    </form>
</main>
@endsection

@section('page-js')
    <script>
        $(document).ready(function() {
            $('#summernote').summernote();
            $('.select2tags').select2({
                placeholder: "Tags",
                tags: true
            });
            $('.select2category').select2({
                placeholder: "Select Category",
                tags: true
            });
        });
    </script>
@endsection
