@extends('admin.master')

@section('page-css')
@endsection

@section('mainContent')
<main class="container">
    <form action="{{ route('new.post') }}" method="POST">
        @csrf
        <div class="px-5">
            <h3 class="text-uppercase fw-bold" style="color: #203656">New Post</h3>
            <input type="text" class="form-control" name="title" placeholder="Title" value="{{ old('title') }}">
            <span class="text-danger">@error('title') {{ $message }} @enderror</span>
            <div class="my-2">
                <select class="select2category form-control" name="category">
                    <option value="{{ old('category') }}">{{ old('category') }}</option>
                    <option value="web development">web development</option>
                    <option value="programming">programming</option>
                    <option value="technology">technology</option>
                    <option value="unity game engine">unity game engine</option>
                    <option value="graphics design">graphics design</option>
                    <option value="other">other</option>
                </select>
                <span class="text-danger">@error('category') {{ $message }} @enderror</span>
            </div>
            <select class="select2tags form-control" name="tags[]" multiple="multiple">
                <option></option>
                <option value="html">html</option>
                <option value="css">css</option>
                <option value="php">php</option>
                <option value="medium">medium</option>
                <option value="webdesign">webdesign</option>
                <option value="adobe">adobe</option>
            </select>
            <span class="text-danger">@error('tags') {{ $message }} @enderror</span>
            <input type="date" class="form-control my-2" name="publishDate" value="{{ old('publishDate') }}">
            <span class="text-danger">@error('publishDate') {{ $message }} @enderror</span>
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
