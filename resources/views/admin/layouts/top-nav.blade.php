<header>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold" style="color: #203656" href="{{ route('admin.index') }}">TechToe</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-link {{ request()->is('cpanel') ? 'active' : '' }}" aria-current="page" href="{{ route('admin.index') }}">New Post</a>
                    <a class="nav-link {{ request()->is('all-post') ? 'active' : '' }}" href="{{ route('admin.allpost') }}">All Posts</a>
                    <a class="nav-link" href="{{ route('frontend.index') }}">Frontend</a>
                </div>
            </div>
        </div>
    </nav>
</header>
