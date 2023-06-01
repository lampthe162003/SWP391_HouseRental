<!DOCTYPE html>
<html>
    <head>
        <title>Change Information</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    </head>
    <body>
        <header class="header-area">
            <!-- Main Header Area -->
            <div class="main-header-area" id="stickyHeader">
                <div class="classy-nav-container breakpoint-off">
                    <!-- Classy Menu -->
                    <nav class="classy-navbar justify-content-between" id="southNav">

                        <!-- Logo -->
                        <a class="nav-brand" href="home.jsp"><img src="img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" style="position: relative">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="home.jsp">Home</a></li>
                                            <li><a href="about-us.jsp">About Us</a></li>
                                            <li><a href="#">Listings</a>
                                                <ul class="dropdown">
                                                    <li><a href="listings.jsp">Listings</a></li>
                                                    <li><a href="single-listings.jsp">Single Listings</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Blog</a>
                                                <ul class="dropdown">
                                                    <li><a href="blog.jsp">Blog</a></li>
                                                    <li><a href="single-blog.jsp">Single Blog</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="elements.jsp">Elements</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.jsp">About Us</a></li>
                                    <li><a href="listings.jsp">Properties</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <c:if test="${sessionScope.acc == null}">
                                        <li><a href="login.jsp">Sign In</a></li>
                                        <li><a href="registration.jsp">Sign Up</a></li>
                                        <!--huy-->
                                    </c:if> 
                                    <c:if test="${sessionScope.acc != null}">
                                        <li><a onmouseover="showInf()" id="user" href="#">Hello ${sessionScope.acc.fullname}</a></li>
                                        <li><a href="logout">Sign Out</a></li>
                                    </c:if>
                                </ul>
                                <div id="inf" style="display: none;position: absolute;background-color: black; font-size: 15px;
                                     width: 15em;color: white;right: 13em;top: 4em;padding: 0.5em">
                                    <ul style="margin: 0 auto">
                                        <li><a href="changeinformation">Change Information</a></li>
                                        <li><a href="changepassword">Change Password</a</li>
                                    </ul>
                                </div>

                                <!-- Search Form -->
                                <div class="south-search-form">
                                    <form action="#" method="post">
                                        <input type="search" name="search" id="search" placeholder="Search Anything ...">
                                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>

                                <!-- Search Button -->
                                <a href="#" class="searchbtn"><i class="fa" aria-hidden="true"></i></a>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <div class="container">
            <h2>Change Information</h2>
            <form method="post" action="changeinformation">
                <div class="form-group">
                    <label>Fullname: </label>
                    <input required="" type="text" name="fullname" class="form-control" placeholder="Enter fullname" value="${fullname}">
                    <p style="color: red">${alertF}</p>
                </div>
                <div class="form-group">
                    <label>Address</label>
                    <input required="" type="text" name="address" class="form-control" placeholder="Enter address" value="${address}">
                </div>
                <div class="form-group">
                    <label>Phone number</label>
                    <input required="" type="text" name="phone" class="form-control" placeholder="Enter phone number" value="${phone}">
                    <p style="color: red">${alertP}</p>
                </div>
                <div class="form-group">
                    <p>Gender</p>
                    <p style="font-size: 20px">
                        <label style="margin-right: 2em"><input required="" style="margin-right: 1em;transform: scale(1.2)" type="radio" name="gender" value="1" ${gender==1?"checked":""}>Male </label>
                        <label><input required="" style="margin-right: 1em;transform: scale(1.2)" type="radio" name="gender" value="0" ${gender==0?"checked":""}>Female</label>
                    </p>
                </div>
                <div class="form-group">
                    <label>Profile picture: </label>
                    <input type="file" name="picture" required="">
                </div>
                <button type="submit" class="btn btn-primary">Change Information</button>
            </form>
        </div>
        <footer class="footer-area section-padding-100-0 bg-img gradient-background-overlay" style="background-image: url(img/bg-img/cta.jpg);">
            <!-- Main Footer Area -->
            <div class="main-footer-area">
                <div class="container">
                    <div class="row">

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>About Us</h6>
                                </div>

                                <img src="img/bg-img/footer.jpg" alt="">
                                <div class="footer-logo my-4">
                                    <img src="img/core-img/logo.png" alt="">
                                </div>
                                <p>Integer nec bibendum lacus. Suspen disse dictum enim sit amet libero males uada feugiat. Praesent malesuada.</p>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Hours</h6>
                                </div>
                                <!-- xoa cai nay -->
                                <!-- Office Hours -->
                                <div class="weekly-office-hours">
                                    <ul>
                                        <li class="d-flex align-items-center justify-content-between"><span>Monday - Friday</span> <span>09 AM - 19 PM</span></li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Saturday</span> <span>09 AM - 14 PM</span></li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Sunday</span> <span>Closed</span></li>
                                    </ul>
                                </div>
                                <!-- Address -->
                                <div class="address">
                                    <h6><img src="img/icons/phone-call.png" alt=""> 0988134951</h6>
                                    <h6><img src="img/icons/envelope.png" alt=""> thuenha@gmail.com</h6>
                                    <h6><img src="img/icons/location.png" alt=""> �H FPT H� N�i</h6>
                                </div>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Useful Links</h6>
                                </div>
                                <!-- Nav -->
                                <ul class="useful-links-nav d-flex align-items-center">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="about-us.jsp">About us</a></li>
                                    <li><a href="about-us.jsp">About us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="listings.jsp">Listings</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li><a href="#">Elements</a></li>
                                    <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Single Footer Widget -->
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                <!-- Widget Title -->
                                <div class="widget-title">
                                    <h6>Featured Properties</h6>
                                </div>
                                <!-- Featured Properties Slides -->
                                <div class="featured-properties-slides owl-carousel">
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                    <!-- Single Slide -->
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Copywrite Text -->
            <div class="copywrite-text d-flex align-items-center justify-content-center">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">SE1719</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </footer>
    </body>
</html>