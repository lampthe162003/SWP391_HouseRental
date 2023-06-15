<%-- 
    Document   : single-blog
    Created on : May 27, 2023, 2:34:39 PM
    Author     : Thang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <!-- Title  -->
        <title>South - Real Estate Agency Template | Single Blog</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">
        <style>
            #banner{
                width: 100%;
                height: auto;
                border: 1px solid black;
                background-color: #Eaeaea;
                padding: 2em;
            }
            .item1{
                display: flex;
                background-color: white;
                margin: 0.5px auto;
                width: 80%;
                height: auto;
                border: 1px solid black;
                border-radius: 10px;
            }
            .leftdetailhouse{
                border: 1px solid black;
                width: 70%;
                height: auto;
            }
            .leftdetailhouse .listimg{
                width: 80%;
                height: 30em;
                margin: 0 auto;
            }
            .listimg img{
                width: 100%;
                height: 85%;
                object-fit: cover;
            }
            .inforuser{
                text-align: center;
                width: 30%;
                height: 50em;
            }
            .btn{
                height: 3em;
                display: flex;
                justify-content: center;
            }
            .btn input{
                padding: 0;
                text-align: center;
                padding: 0 1em;
                background-color: #1E90FF;
                border-radius: 10px;
                color: white;
            }
            .cont{
                width: 95%;
                margin: 0 auto;
                border: 1px solid black;

            }
            .aboutuser{
                background: #FFA500;
                height: 30em;
                border-radius: 10px;
            }
            .imguser{
                width: 40%;
                height: 40%;
                padding-top: 1.5em;
                margin-left: 6em;
            }
            .imguser img{
                border-radius: 50%;
                height: 8em;
                width: 8em;
            }
            .fillinfor{
                padding-top: 0.5em;
                border-radius: 10px;
                width: 90%;
                height: 2.5em;
                margin: 0 auto;
                margin-bottom: 1em;
                background-color: white;
            }
            .fillinfor ion-icon{
                font-size: 20px;
            }
            #activeHeart ion-icon{
                color: red;
            }
            #noactiveHeart ion-icon{
                color: black;
            }
            .detail{
                padding: 0.5em 1em;
                width: 100%;
                height: auto;
                border:1px solid black
            }
            .detail h2{
                color: red;
            }
            .detail h4{
                font-weight: 700;
                color: black;
            }
            .detail ion-icon{
                color: #ffd454;
            }
            .detail p ion-icon{
                color:#3e82f0;
            }
            .detail #ins ion-icon{
                color: black;
                margin-right: 0.5em;
            }
            .detail #ins span{
                margin-right: 2em;
            }
            #discx{
                color: black;
                font-weight: normal;
            }
            .secti{
                margin: 2em 0;
            }
            .secti p{
                color: black;
                font-weight: normal;
            }
            .tb{
                padding-left:0.5em;
                margin: 0 auto;
                width: 100%;
                height: 2em;
                display: flex;
            }
            #butmess{
                cursor: pointer;
            }
            #butfa{
                cursor: pointer;
            }
            body{
                position: relative;
            }
            .messcontain{
                position: fixed;
                right: 6em;
                bottom: 0;
                width: 22%;
                height: 25em;
                border: 1px solid black;
                background-color: #333333;
                z-index: 99;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }
/*            #ofmess{
                display: none;
            }*/
            #hdmess ion-icon{
                color: white;
                font-size: 2em;

            }
            #hdmess #cls ion-icon:hover{
                color: black;
                background-color: gray;
                cursor: pointer;
                border-radius: 50%;
            }
            #banmess p{
                color: white;
                margin-bottom: 0.5em;
                padding-left: 0.2em;
            }
            #banmess p span{
                padding: 0.5em;
            }
            .msl{
                background-color: #818281;
                border-radius: 10px;
                width: 70%;
            }
            .msr{
                background-color: #f72f57;
                border-radius: 10px;
                width: 70%;
                margin-left: 5em;
            }
            #sn{
                display: grid;
                place-items: center;
                cursor: pointer;
            }
            #sn ion-icon{
                color: #f72f57;
                font-size: 22px;
            }
            #ftmess{
                margin-right: 0.5em;
            }
            #ftmess input{
                padding-left: 0.5em;
                width: 100%;
                height: 100%;
                border-radius: 10px;
            }
        </style>
    </head>

    <body>
        <form method="post" action="messages" id="sen">
            <input type="hidden" name="receiverId" value="${finforowner.getId()}"/>
            <input type="hidden" name="houseId" value="${houseId}"/>
            <div class="messcontain" id="ofmess" style="display: ${showM==null?"none":"block"}">
                <div id="hdmess" style="padding: 0.3em;width: 100%;height: 11%;border-bottom: 1px solid #5c5c5c;display: flex">
                    <div style=" width:13%; height:100%"><img style="border-radius: 50%" src="./assets/images/${finforowner.getProfilePicture()}" alt="alt"/></div>
                    <div style="width: 77%;height: 100%"><p style="color:white;font-weight: 600;margin-left: 0.5em;">${finforowner.getFullName()}</p></div>
                    <div id="cls" style="width: 10%;height: 100%;" onclick="disMess()"><ion-icon name="close-outline"></ion-icon></div>
                </div>
                <div id="banmess" style="padding: 0.5em;height: 78%;width: 100%;overflow-x: hidden">
                    <!--                    <div class="msl"><p><span>Trump is the first former president to face federal charges following last week’s indictment by special counsel Jack Smith. Trump made clear once again Tuesday that he has no plans to stop attacking the special counsel’s indictment – and the other legal peril he faces – as he runs for president again in 2024.</span></p></div>
                                        <div class="msl"><p><span>Hello sunday!</span></p></div>
                                        <div class="msr"><p><span>Hello winners!</span></p></div>
                                        <div class="msl"><p><span>Hello sunday!</span></p></div>
                                        <div class="msr"><p><span>Hello winners!</span></p></div>-->
                    <c:forEach items="${lsM}" var="m">
                        <div class=${m.getSender_ID() == sessionScope.acc.getId()?"msr":"msl"}><p><span>${m.getContent()}</span></p></div>
                    </c:forEach>
                </div>
                <div id="ftmess" style="display: flex;height: 11%;width: 100%;padding: 0.3em 0;padding-left: 0.2em;">
                    <div style="width: 88%"><input type="text" name="inbox"></div>
                    <div style="width: 10%" id="sn" onclick="submitForm()"><ion-icon name="send"></ion-icon></div>
                </div>
            </div> 
        </form>
        <!-- Preloader -->
        <div id="preloader">
            <div class="south-load"></div>
        </div>

        <!-- ##### Header Area Start ##### -->
        <header class="header-area">

            <!-- Top Header Area -->
            <div class="top-header-area">
                <div class="h-100 d-md-flex justify-content-between align-items-center">
                    <div class="email-address">
                        <a href="mailto:contact@southtemplate.com">contact@southtemplate.com</a>
                    </div>
                    <div class="phone-number d-flex">
                        <div class="icon">
                            <img src="img/icons/phone-call.png" alt="">
                        </div>
                        <div class="number">
                            <a href="tel:+45 677 8993000 223">+45 677 8993000 223</a>
                        </div>
                    </div>
                </div>
            </div>

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
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="home.jsp">Home</a></li>
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
                                    <li><a href="#">Mega Menu</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 1</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 2</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 3</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 4</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>

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

        <!-- ##### Breadcumb Area Start ##### -->
        <section class="breadcumb-area bg-img" style="background-image: url(img/bg-img/hero1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="breadcumb-content">
                            <h3 class="breadcumb-title">Detail House</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Breadcumb Area End ##### -->

        <!-- ##### Blog Area Start ##### -->
        <div id="banner">
            <div class="item1">
                <div class="leftdetailhouse">
                    <div class="listimg">
                        <img id="sliderimg" src="${firstImg}" alt="alt"/><br>
                        <div class="btn">
                            <input style="margin-right: 1em;cursor: pointer;" type="button" value="Prev" onclick="prevImage()">
                            <input style="cursor: pointer;" type="button" value="Next" onclick="nextImage()">
                        </div>
                    </div>
                    <div class="detail">

                        <h2><ion-icon name="star"></ion-icon><ion-icon name="star"></ion-icon><ion-icon name="star"></ion-icon>${fhouse.getTitle()}</h2>
                        <p style="color:black;font-weight: normal"><ion-icon name="location"></ion-icon>Address: ${fhouse.getFull_Adress()}</p>  
                        <p style="color:black;font-size: 18px" id="ins">
                        <ion-icon name="wallet-outline"></ion-icon><span style="font-size: 22px;color: #1fcc73">${fhouse.getPrice()}$/month</span>
                        <ion-icon name="cube-outline"></ion-icon><span>${fhousedetail.getArea()}m<sup>2</sup></span>
                        <ion-icon name="bed-outline"></ion-icon><span>${fhousedetail.getNumber_Of_Bedrooms()}</span>
                        <ion-icon name="woman-outline"></ion-icon><span>${fhousedetail.getNumber_Of_Bathrooms()}</span>
                        <ion-icon name="car-sport-outline"></ion-icon><span>${fhousedetail.getPool()}</span>
                        <ion-icon name="compass-outline"></ion-icon><span>${fhousedirection.getDirection()}</span>
                        </p>
                        <div class="secti">
                            <h4>Description Information</h4>
                            <p id="discx">
                                <!--                                Room: 15m2 (with attic: 8m2), price 3.5 million.<br/><br/>
                                
                                                                Room without guard: 15m2, price 3 million.<br/><br/>
                                
                                                                Room: 20m2 (with attic: 4m2), with window. Price 4 million.<br/><br/>
                                
                                                                Apartment: 40m2. Price 6.5 million (1 bedroom 12m2, 1 attic: 15m2). There is a balcony, washing machine, air conditioner.
                                                                <br/><br/>
                                                                No surcharge + wifi.<br/><br/>
                                
                                                                Parking + elevator available.<br/><br/>
                                
                                                                Contact owner: 0978010839. Ms Thanh<br/><br/>
                                
                                                                842/1/17 Nguyen Kiem, Ward 3, Go Vap. Near Go supermarket and Industrial University 4.-->
                                ${fhouse.getDescription()}
                            </p>
                        </div>
                        <div class="secti">
                            <h4>Posting characteristics</h4>
                            <div class="tb" >
                                <div style="width: 50%"><p>Code house:</p></div>
                                <div style="width: 50%"><p>#${fhouse.getId()}</p></div>
                            </div>
                            <div class="tb" style="background-color: #dedede;border-radius: 5px">
                                <div style="width: 50%"><p>District:</p></div>
                                <div style="width: 50%"><p>${fdistrict.getDistrict()}</p></div>
                            </div>
                            <div class="tb" >
                                <div style="width: 50%"><p>Category:</p></div>
                                <div style="width: 50%"><p>${fhousecategory.getCategory()}</p></div>
                            </div>
                            <div class="tb" style="background-color: #dedede;border-radius: 5px">
                                <div style="width: 50%"><p>Tenant:</p></div>
                                <div style="width: 50%"><p>Everyone</p></div>
                            </div>
                            <div class="tb" >
                                <div style="width: 50%"><p>Date Submitted:</p></div>
                                <div style="width: 50%"><p>${fhouse.getAdded_Date()}</p></div>
                            </div>
                        </div>
                        <div class="secti">
                            <h4>Contact Info</h4>
                            <div class="tb" >
                                <div style="width: 50%"><p>Contact:</p></div>
                                <div style="width: 50%"><p>${finforowner.getFullName()}</p></div>
                            </div>

                            <div class="tb" style="background-color: #dedede;border-radius: 5px">
                                <div style="width: 50%"><p>Phone Number:</p></div>
                                <div style="width: 50%"><p>${finforowner.getPhoneNumber()}</p></div>
                            </div>
                            <div class="tb" >
                                <div style="width: 50%"><p>Email:</p></div>
                                <div style="width: 50%"><p>${finforowner.getEmail()}</p></div>
                            </div>
                            <div class="tb" style="background-color: #dedede;border-radius: 5px">
                                <div style="width: 50%"><p>Address:</p></div>
                                <div style="width: 50%"><p>${finforowner.getAddress()}</p></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="inforuser">
                    <div class="cont">
                        <div class="aboutuser">
                            <div class="imguser">
                                <img src="./assets/images/${finforowner.getProfilePicture()}" alt="alt"/>
                            </div>
                            <div>
                                <h6 style="font-weight: 800;margin-bottom: 2em;">${finforowner.getFullName()}</h6>
                            </div>
                            <div class="fillinfor" style="background-color: #16c784;color:white">
                                <h6 style="color: white;display: inline-flex"><ion-icon name="call"></ion-icon>${finforowner.getPhoneNumber()}</h6>
                            </div>
                            <c:if test="${sessionScope.acc.getId() != finforowner.getId()}">
                                <div class="fillinfor" id="butmess" onclick="disMess()">
                                    <h6 style="color: black;display: inline-flex"><ion-icon name="chatbox-outline"></ion-icon>Message</h6>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.acc.getId() == finforowner.getId()}">
                                <div class="fillinfor" id="butmess" onclick="disMess()">
                                    <h6 style="color: black;display: inline-flex"><ion-icon name="chatbox-outline"></ion-icon>Message</h6>
                                </div>
                            </c:if>
                            <div class="fillinfor" id="butfa">
                                <a href="favouritehouse?houseId=${houseId}"><h6 style="color: black;display: inline-flex" id="${heart}"><ion-icon name="heart"></ion-icon>Favourite</h6> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- ##### Blog Area End ##### -->

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
                                    <h6><img src="img/icons/phone-call.png" alt=""> +45 677 8993000 223</h6>
                                    <h6><img src="img/icons/envelope.png" alt=""> office@template.com</h6>
                                    <h6><img src="img/icons/location.png" alt=""> Main Str. no 45-46, b3, 56832, Los Angeles, CA</h6>
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
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="#">Listings</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Properties</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Contact</a></li>
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
        <script>
                        var imagePaths = [];
                        imagePaths = '${imgPath}'.split(',');
                        var slider = document.getElementById('sliderimg');
                        var currentIndex = 0;
                        function changeImage() {
                            slider.src = "./assets/images/" + imagePaths[currentIndex];
                        }
                        function nextImage() {
                            currentIndex++;
                            if (currentIndex >= imagePaths.length) {
                                currentIndex = 0;
                            }
                            changeImage();
                        }
                        function prevImage() {
                            currentIndex--;
                            if (currentIndex < 0) {
                                currentIndex = imagePaths.length - 1;
                            }
                            changeImage();
                        }
                        function disMess() {
                            var m = document.getElementById('ofmess');
                            if (m.style.display === 'none') {
                                m.style.display = 'block';
                            } else {
                                m.style.display = 'none';
                            }
                        }
                        function submitForm() {
                            document.getElementById('sen').submit();
                        }
        </script>
    </body>

</html>
