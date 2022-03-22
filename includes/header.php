<div class="site-navbar py-2">

    <div class="search-wrap">
        <div class="container">
            <a href="#" class="search-close js-search-close"><span class="icon-close2"></span></a>
            <form action="store.php" method="GET">
                <input type="text" name="search" class="form-control" placeholder="Search keyword and hit enter...">
            </form>
        </div>
    </div>
    <div class="container">
        <div class="d-flex align-items-center justify-content-between">
            <div class="logo">
                <div class="site-logo">
                    <a href="index.php" class="js-logo-clone">Pharma</a>
                </div>
            </div>
            <div class="main-nav d-none d-lg-block">
                <nav class="site-navigation text-right text-md-center" role="navigation">
                    <ul class="site-menu js-clone-nav d-none d-lg-block">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="store.php?store=all">Store</a></li>
                        <li class="has-children">
                            <a href="#">Categories</a>
                            <ul class="dropdown">
                                <li><a href="store.php?cat=medicine">Medicine</a></li>
                                <li><a href="store.php?cat=self-care">Self Care</a></li>
                                <li><a href="store.php?cat=medicine">machine</a></li>

                            </ul>
                        </li>
                        <li><a href="about.php">About</a></li>
                        <li><a href="admin/index.php">Admin</a></li>
                        <li><a href="contact.php">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="icons">
                <a href="#" class="icons-btn d-inline-block js-search-open"><span class="icon-search"></span></a>
                <a href="cart.php" class="icons-btn d-inline-block bag">
                    <span class="icon-shopping-bag"></span>
                    <span class="number">2</span>
                </a>
                <a href="" class="site-menu-toggle js-menu-toggle ml-3 d-inline-block d-lg-none"><span class="icon-menu"></span></a>
            </div>
        </div>
    </div>
</div>