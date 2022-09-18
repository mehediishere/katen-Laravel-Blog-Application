<!-- header -->
<header class="header-default">
    <nav class="navbar navbar-expand-lg">
        <div class="container-xl">
            <!-- site logo -->
            <a class="navbar-brand" href="{{ route('frontend.index') }}"><img src="frontend/images/logo.svg" alt="logo" /></a>

            <div class="collapse navbar-collapse">
                <!-- menus -->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item {{ (request()->is('/')) ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('frontend.index') }}">Home</a>
                    </li>
                    <li class="nav-item {{ request()->is('single-blog') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('frontend.blog-single') }}">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Video</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#">Categories</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="{{ route('frontend.category') }}">Category</a></li>
                            <li><a class="dropdown-item" href="#">Blog Single</a></li>
                            <li><a class="dropdown-item" href="#">Blog Single Alt</a></li>
                            <li><a class="dropdown-item" href="#">About</a></li>
                            <li><a class="dropdown-item" href="#">Contact</a></li>
                        </ul>
                    </li>
                    <li class="nav-item {{ request()->is('about') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('frontend.about') }}">About</a>
                    </li>
                    <li class="nav-item {{ request()->is('contact') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ route('frontend.contact') }}">Contact</a>
                    </li>
                </ul>
            </div>

            <!-- header right section -->
            <div class="header-right">
                <!-- social icons -->
                <ul class="social-icons list-unstyled list-inline mb-0">
                    <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-medium"></i></a></li>
                    <li class="list-inline-item"><a href="#"><i class="fab fa-youtube"></i></a></li>
                </ul>
                <!-- header buttons -->
                <div class="header-buttons">
                    <button class="search icon-button">
                        <i class="icon-magnifier"></i>
                    </button>
                    <button class="burger-menu icon-button">
                        <span class="burger-icon"></span>
                    </button>
                </div>
            </div>
        </div>
    </nav>
</header>
