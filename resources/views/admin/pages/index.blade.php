@extends('admin.master')

@section('page-css')
@endsection

@section('mainContent')
<main class="container">
    <form action="" method="">
        <div class="px-5">
            <h3 class="text-uppercase">New Post</h3>
            <input type="text" class="form-control mb-2" name="title" placeholder="Title">
            <input type="text" class="form-control mb-2" name="category" placeholder="Category">
            <select class="select2cls form-control" name="tags[]" multiple="multiple">
                <option></option>
                <option value="html">html</option>
                <option value="css">css</option>
                <option value="php">php</option>
                <option value="medium">medium</option>
                <option value="webdesign">webdesign</option>
                <option value="adobe">adobe</option>
            </select>
            <input type="date" class="form-control my-2" name="publishDate">
            <textarea id="summernote" name="editordata"></textarea>
            <button class="btn btn-info mt-2">Publish</button>
        </div>
    </form>
</main>
@endsection

@section('page-js')
    <script>
        $(document).ready(function() {
            $('#summernote').summernote();
            $('.select2cls').select2({
                placeholder: "Tags",
                tags: true
            });
        });
    </script>
@endsection
