<%-- 
    Document   : home
    Created on : May 25, 2023, 4:32:09 PM
    Author     : Trung Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>RentHouse System</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">
        <!-- change CSS -->
        <link rel="stylesheet" href="css/change.css"/>
    </head>

    <body>
        <% 
            ResultSet rsCate = (ResultSet) request.getAttribute("rsCate");
            ResultSet rsCity = (ResultSet) request.getAttribute("rsCity");
        %>
        <!-- Preloader -->
        <div id="preloader">
            <div class="south-load"></div>
        </div>

        <!-- ##### Header Area Start ##### -->
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
                                    <li><a href="listblog">Blog</a></li>
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
                                        <li><a href="changepassword">Change Password</a></li>
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
        <!-- ##### Header Area End ##### -->

        <!-- ##### Hero Area Start ##### -->
        <section class="hero-area">
            <div class="hero-slides owl-carousel">
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero1.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your home</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero2.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your dream house</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Single Hero Slide -->
                <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/hero3.jpg);">
                    <div class="container h-100">
                        <div class="row h-100 align-items-center">
                            <div class="col-12">
                                <div class="hero-slides-content">
                                    <h2 data-animation="fadeInUp" data-delay="100ms">Find your perfect house</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Hero Area End ##### -->

        <!-- ##### Advance Search Area Start ##### -->
        <div class="south-search-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="advanced-search-form">
                            <!-- Search Title -->
                            <div class="search-title">
                                <p>Search for your home</p>
                            </div>
                            <!-- Search Form -->
                            <form action="#" method="post" id="advanceSearch">
                                <div class="row">

                                    <!--                                    <div class="col-12 col-md-4 col-lg-3">
                                                                            <div class="form-group">
                                                                                <input type="input" class="form-control" name="input" placeholder="Keyword">
                                                                            </div>
                                                                        </div>-->
                                    <div class="col-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control" id="catagories">
                                                <option>All Catagories</option>
                                                <%while(rsCate.next()){%>
                                                <option><%=rsCate.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control" id="cities">
                                                <option>All Cities</option>
                                                <%while(rsCity.next()){%>
                                                <option><%=rsCity.getString(2)%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control" id="bedrooms">
                                                <option>Bedrooms</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5+</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-3 col-lg-3">
                                        <div class="form-group">
                                            <select class="form-control" id="bathrooms">
                                                <option>Bathrooms</option>
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5+</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-12 col-md-4">
                                        <!-- Space Range -->
                                        <div class="slider-range">
                                            <div data-min="120" data-max="820" data-unit=" sq. ft" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="120" data-value-max="820">
                                                <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                            </div>
                                            <div class="range"></div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 offset-md-4">
                                        <!-- Distance Range -->
                                        <div class="slider-range">
                                            <div data-min="120" data-max="820" data-unit=" sq. ft" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="120" data-value-max="820">
                                                <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                                <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                                            </div>
                                            <div class="range"></div>
                                        </div>
                                    </div>


                                    <div class="col-12 col-md-offset-4 col-md-4 offset-md-4 d-flex justify-content-between align-items-end">
                                        <!-- More Filter -->

                                        <!-- Submit -->
                                        <div class="form-group mb-0">
                                            <button type="submit" class="btn south-btn">Search</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Advance Search Area End ##### -->

        <!-- ##### Featured Properties Area Start ##### -->
        <section class="featured-properties-area section-padding-100-50">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading wow fadeInUp">
                            <h2>Featured Properties</h2>
                            <p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="100ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <a href="#"><img  src="img/bg-img/5.jpg" alt=""></a>

                                <div class="tag">
                                    <!--<span>For Sale</span>-->
                                </div>
                                <div class="list-price">
                                    <p>4.5 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>CCMN VNAHOMES - 29 Ngõ Hàng Cháo</h5>
                                <p class="location"><img src="img/icons/location.png" alt="">LIbré Homestay Phố Hàng Cháo, Phường Cát Linh, Quận Đống Đa, Hà Nội</p>
                                <p>- Nằm ở vị trí trung tâm giao giữa các tuyến phố lớn như Nguyễn Thái Học, Cát Linh, Tôn Đức Thắng .</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>25m2</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="200ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <img src="img/bg-img/2.jpg" alt="">

                                <div class="tag">
                                    <!--<span></span>-->
                                </div>
                                <div class="list-price">
                                    <p>3.95 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>Chung cư mini Ting Tong</h5>
                                <p class="location"><img src="img/icons/location.png" alt="">Ngõ 68 Triều Khúc, Thanh Xuân</p>
                                <p>Dạng phòng Studio: Tủ lạnh, tủ, điều hoà, nóng lạnh, tranh, chăn ga gối đệm, gác xép, tủ bếp trên dưới bằng nhôm, pallet, tòa nhà có thang máy + máy giặt chung</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>25m2</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <img src="img/bg-img/3..jpg" alt="">

                                <div class="tag">
                                    <!--<span>For Sale</span>-->
                                </div>
                                <div class="list-price">
                                    <p>6.2 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>Căn hộ Apartment Kim Mã</h5>
                                <p class="location"><img src="img/icons/location.png" alt="">Nhà số 10, ngách 575/10, ngõ 575 Kim Mã, Ba Đình.</p>
                                <p>Toà nhà được trang bị thang máy, hệ thống giặt sấy đầy đủ, wifi trang bị đến từng phòng,có hệ thống phòng cháy chữa cháy tự động, thang thoát hiểm...</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>2</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>30m2</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!--h-->
                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="400ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <img src="img/bg-img/6.jpg" alt="">

<!--                                <div class="tag">
                                    <span>For Sale</span>
                                </div>-->
                                <div class="list-price">
                                    <p>8 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>Studio đầy đủ tiện nghi mặt phố Nhật</h5>
                                <p class="location"><img src="img/icons/location.png" alt="">phố Nhật, Linh Lang, Cống Vị, Ba Đình</p>
                                <p>Studio full đồ, mới tinh, đầy đủ tiện nghi tivi 55in + tủ lạnh + điều hòa + bếp + giường + tủ + nhà vệ sinh.</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>3</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>38 m²</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="500ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <img src="img/bg-img/7.jpg" alt="">

                                <div class="tag">
<!--                                    <span>For Sale</span>-->
                                </div>
                                <div class="list-price">
                                    <p>4.75 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>CCMN khu trung tâm Nam Từ Liêm.</h5>
                                <p class="location"><img src="img/icons/location.png" alt="">116 Miếu Đầm, Nam Từ Liêm</p>
                                <p>Nội thất: Điều hòa, nóng lạnh, giường, tủ quần áo, đệm, bàn làm việc, tủ bếp trên dưới, hút mùi, bếp từ, tủ lạnh,..</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>25 m²</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Featured Property -->
                    <div class="col-12 col-md-6 col-xl-4">
                        <div class="single-featured-property mb-50 wow fadeInUp" data-wow-delay="600ms">
                            <!-- Property Thumbnail -->
                            <div class="property-thumb">
                                <img src="img/bg-img/8.jpg" alt="">

<!--                                <div class="tag">
                                    <span>For Sale</span>
                                </div>-->
                                <div class="list-price">
                                    <p>4.4 triệu/tháng</p>
                                </div>
                            </div>
                            <!-- Property Content -->
                            <div class="property-content">
                                <h5>Chung cư mini Thao </h5>
                                <p class="location"><img src="img/icons/location.png" alt="">Đỗ Đức Dục, Nam Từ Liêm</p>
                                <p>Phòng có ban công sáng thoáng, có cửa sổ thoáng mát, có giường tủ, sofa, bàn ghế, thảm,...</p>
                                <div class="property-meta-data d-flex align-items-end justify-content-between">
                                    <div class="new-tag">
                                        <img src="img/icons/new.png" alt="">
                                    </div>
                                    <div class="bathroom">
                                        <img src="img/icons/bathtub.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="garage">
                                        <img src="img/icons/garage.png" alt="">
                                        <span>1</span>
                                    </div>
                                    <div class="space">
                                        <img src="img/icons/space.png" alt="">
                                        <span>35 m²</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Featured Properties Area End ##### -->

        <!-- ##### Call To Action Area Start ##### -->
        <section class="call-to-action-area bg-fixed bg-overlay-black" style="background-image: url(img/bg-img/cta.jpg)">
            <div class="container h-100">
                <div class="row align-items-center h-100">
                    <div class="col-12">
                        <div class="cta-content text-center">
                            <h2 class="wow fadeInUp" data-wow-delay="300ms">Are you looking for a place to rent?</h2>
                            <h6 class="wow fadeInUp" data-wow-delay="400ms">Suspendisse dictum enim sit amet libero malesuada feugiat.</h6>
                            <a href="#" class="btn south-btn mt-50 wow fadeInUp" data-wow-delay="500ms">Search</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Call To Action Area End ##### -->

        <!-- ##### Testimonials Area Start ##### -->
        <section class="south-testimonials-area section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-heading wow fadeInUp" data-wow-delay="250ms">
                            <h2>Client testimonials</h2>
                            <p>Suspendisse dictum enim sit amet libero malesuada feugiat.</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="testimonials-slides owl-carousel wow fadeInUp" data-wow-delay="500ms">

                            <!-- Single Testimonial Slide -->
                            <div class="single-testimonial-slide text-center">
                                <h5>Perfect Home for me</h5>
                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                                <div class="testimonial-author-info">
                                    <img src="img/bg-img/feature6.jpg" alt="">
                                    <p>Daiane Smith, <span>Customer</span></p>
                                </div>
                            </div>

                            <!-- Single Testimonial Slide -->
                            <div class="single-testimonial-slide text-center">
                                <h5>Perfect Home for me</h5>
                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                                <div class="testimonial-author-info">
                                    <img src="img/bg-img/feature6.jpg" alt="">
                                    <p>Daiane Smith, <span>Customer</span></p>
                                </div>
                            </div>

                            <!-- Single Testimonial Slide -->
                            <div class="single-testimonial-slide text-center">
                                <h5>Perfect Home for me</h5>
                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna.</p>

                                <div class="testimonial-author-info">
                                    <img src="img/bg-img/feature6.jpg" alt="">
                                    <p>Daiane Smith, <span>Customer</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Testimonials Area End ##### -->

        <!-- ##### Editor Area Start ##### -->
        <section class="south-editor-area d-flex align-items-center">
            <!-- Editor Content -->
            <div class="editor-content-area">
                <!-- Section Heading -->
                <div class="section-heading wow fadeInUp" data-wow-delay="250ms">
                    <img src="img/icons/prize.png" alt="">
                    <h2>jeremy Scott</h2>
                    <p>Realtor</p>
                </div>
                <p class="wow fadeInUp" data-wow-delay="500ms">Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odiomattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Curabitur rhoncus auctor eleifend. Fusce venenatis diam urna, eu pharetra arcu varius ac. Etiam cursus turpis lectus, id iaculis risus tempor id. Phasellus fringilla nisl sed sem scelerisque, eget aliquam magna vehicula.</p>
                <div class="address wow fadeInUp" data-wow-delay="750ms">
                    <h6><img src="img/icons/phone-call.png" alt=""> 0123456778</h6>
                    <h6><img src="img/icons/envelope.png" alt=""> office@template.com</h6>
                </div>
                <div class="signature mt-50 wow fadeInUp" data-wow-delay="1000ms">
                    <img src="img/core-img/signature.png" alt="">
                </div>
            </div>

            <!-- Editor Thumbnail -->
            <div class="editor-thumbnail">
                <img src="img/bg-img/editor.jpg" alt="">
            </div>
        </section>
        <!-- ##### Editor Area End ##### -->

        <!-- ##### Footer Area Start ##### -->
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
                                    <h6><img src="img/icons/location.png" alt=""> ÐH FPT Hà Nôi</h6>
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
        <!-- ##### Footer Area End ##### -->

        <!-- jQuery (Necessary for All JavaScript Plugins) -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="js/plugins.js"></script>
        <script src="js/classy-nav.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
        <script>
                        function showInf() {
                            var x = document.getElementById('inf');
                            if (x.style.display === 'none') {
                                x.style.display = 'block';
                            } else {
                                x.style.display = 'none';
                            }
                        }
        </script>
    </body>
</html>