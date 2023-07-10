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
                background-color: white;
                margin: 0.5px auto;
                width: 50%;
                height: 12em;
                border: 1px solid black;
                border-radius: 10px;
                transition: 0.3s;
                transition-timing-function: linear;
                transition: 0.3s;
                transition-timing-function: linear;
                transition: 0.3s;
                transition-timing-function: linear;
            }
            .item1:hover{
                margin-top: 1em;
                margin-bottom: 1em;
                transform: scale(1.2);
            }
            .item2{
                display: flex;
                width: 95%;
                height: 90%;
                border-radius: 10px;
                margin: 0 auto;
                margin-top: 0.5em;
                position: relative;
                position: relative;
                position: relative;
            }
            .inblog-img{
                width: 25%;
                height: 100%;
            }
            .inblog-img img{
                width: 100%;
                height: 10em;
                border-radius: 10px;
            }
            .inblog-infor{
                margin: 0 auto;
                width: 70%;
                height: 100%;
            }
            .inblog-infor .pra{
                margin: auto 0;
                width: 90%;
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
                overflow: hidden;
                text-overflow: ellipsis;
            }
            .inblog-infor h5{
                color: #6699ff;
            }
            #createblog{
                padding: 1em 2em;
                border: 1px solid black;
                border-radius: 10px;
                color: white;
                background-color: #6699ff;

            }
            #createblog:hover{
                color: black;
                background-color: white;
            }
            #cr{
                width: 10%;
                margin: 0 auto;
                margin-bottom: 2.5em;
            }
            .active{
                color:red;
                cursor: default;
                padding: 0.5em;
            }
            .inactive{
                color: black;
                padding: 0.5em;
                padding: 0.5em;
            }
            .inactive{
                color: black;
                padding: 0.5em;
                padding: 0.5em;
            }
            .inactive{
                color: black;
                padding: 0.5em;
            }
            .numberP{
                width: 10%;
                height: 2em;
                margin: 0.5em auto;
            }
            .optionP{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 4%;
                height: 2em;
                position: absolute;
                right: 0;
                border-radius: 50%;
            }
            .optionP:hover{
                background-color: #cccccc;
                color: black;
                cursor: pointer;
            }
            .optionP ion-icon{
                font-size: 20px;
            }
            .listOption{
                background-color: #333333;
                box-shadow: 0 0 5px black;
                border-radius: 10px;
                position: absolute;
                right: 0;
                top:2em;
            }
            .listOption a{
                display: inline-flex;
                text-decoration: none;
                color: white;
                padding: 1em 1em;
                width: 100%;
                line-height: 1em;
            }
            .listOption a:hover{
                background-color: #cccccc;
                border-radius: 10px;
                color: black;
            }
            .numberP a{
                text-decoration: none;
            }
            .optionP{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 4%;
                height: 2em;
                position: absolute;
                right: 0;
                border-radius: 50%;
            }
            .optionP:hover{
                background-color: #cccccc;
                color: black;
                cursor: pointer;
            }
            .optionP ion-icon{
                font-size: 20px;
            }
            .listOption{
                background-color: #333333;
                box-shadow: 0 0 5px black;
                border-radius: 10px;
                position: absolute;
                right: 0;
                top:2em;
            }
            .listOption a{
                display: inline-flex;
                text-decoration: none;
                color: white;
                padding: 1em 1em;
                width: 100%;
                line-height: 1em;
            }
            .listOption a:hover{
                background-color: #cccccc;
                border-radius: 10px;
                color: black;
            }
            .optionP{
                display: flex;
                justify-content: center;
                align-items: center;
                width: 4%;
                height: 2em;
                position: absolute;
                right: 0;
                border-radius: 50%;
            }
            .optionP:hover{
                background-color: #cccccc;
                color: black;
                cursor: pointer;
            }
            .optionP ion-icon{
                font-size: 20px;
            }
            .listOption{
                background-color: #333333;
                box-shadow: 0 0 5px black;
                border-radius: 10px;
                position: absolute;
                right: 0;
                top:2em;
            }
            .listOption a{
                display: inline-flex;
                text-decoration: none;
                color: white;
                padding: 1em 1em;
                width: 100%;
                line-height: 1em;
            }
            .listOption a:hover{
                background-color: #cccccc;
                border-radius: 10px;
                color: black;
            }
        </style>
    </head>

    <body>
        <!-- Preloader -->
<!--        <div id="preloader">
<!--        <div id="preloader">
            <div class="south-load"></div>
        </div>

         ##### Header Area Start ##### 
         ##### Header Area Start ##### 
        <header class="header-area">
             Main Header Area 
            <div class="main-header-area" id="stickyHeader">
                <div class="classy-nav-container breakpoint-off">
                     Classy Menu 
                    <nav class="classy-navbar justify-content-between" id="southNav">

                         Logo 
                        <a class="nav-brand" href="home.jsp"><img src="img/core-img/logo.png" alt=""></a>

                         Navbar Toggler 
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                         Menu 
                        <div class="classy-menu" style="position: relative">

                             close btn 
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                             Nav Start 
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
                                    <li><a href="posthouse">Post house</a></li>
                                    <li><a href="listblog">Blog</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                        <c:if test="${sessionScope.acc == null}">
                                        <li><a href="login">Sign In</a></li>
                                        <li><a href="register">Sign Up</a></li>
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

                                 Search Form 
                                <div class="south-search-form">
                                    <form action="#" method="post">
                                        <input type="search" name="search" id="search" placeholder="Search Anything ...">
                                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                    </form>
                                </div>

                                 Search Button 
                                <a href="#" class="searchbtn"><i class="fa" aria-hidden="true"></i></a>
                            </div>
                             Nav End 
                        </div>
                    </nav>
                </div>
            </div>
        </header>
         ##### Header Area End ##### 

         ##### Breadcumb Area Start ##### 
        <section class="breadcumb-area bg-img" style="background-image: url(img/bg-img/hero1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="breadcumb-content">
                            <h3 class="breadcumb-title">Blog List</h3>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
<jsp:include page="header.jsp"></jsp:include>
        </section>-->
<jsp:include page="header.jsp"></jsp:include>
        <!-- ##### Breadcumb Area End ##### -->

        <!-- ##### Blog Area Start ##### -->
        <div id="banner">
            <c:if test="${acc!=null}">
                <div id="cr"><a id="createblog" href="postblog">Đăng blog</a></div>
            </c:if>
            <c:forEach items="${lsB}" var="b">
                <div class="item1">
                    <div class="item2">
                        <div class="inblog-img">
                            <img src="./assets/images/${b.getImage()}" alt="${b.getImage()}"/>
                        </div>
                        <div class="inblog-infor">
                            <a href="detailblog?id=${b.getId()}&idPoster=${b.getPosterId()}"><h5>${b.getTopic()}</h5></a>
                            <a href="detailblog?id=${b.getId()}&idPoster=${b.getPosterId()}"><h5>${b.getTopic()}</h5></a>
                            <div class="pra">${b.getContent()}</div>
                        </div>
                        <c:if test="${idA == b.getPosterId()}">
                            <div class="optionP" onclick="showList('${b.getId()}')"><ion-icon name="ellipsis-horizontal-outline"></ion-icon></div>
                        </c:if>
                        <div id="${b.getId()}" class="listOption" style="display: none;">
                            <div><a href="editblog?id=${b.getId()}"><ion-icon name="pencil-outline"></ion-icon>Edit</a></div>
                            <div><a href="deleteblog?id=${b.getId()}"><ion-icon name="trash-bin-outline"></ion-icon>Delete</a></div>
                        </div>
                        <c:if test="${idA == b.getPosterId()}">
                            <div class="optionP" onclick="showList('${b.getId()}')"><ion-icon name="ellipsis-horizontal-outline"></ion-icon></div>
                        </c:if>
                        <div id="${b.getId()}" class="listOption" style="display: none;">
                            <div><a href="editblog?id=${b.getId()}"><ion-icon name="pencil-outline"></ion-icon>Edit</a></div>
                            <div><a href="deleteblog?id=${b.getId()}"><ion-icon name="trash-bin-outline"></ion-icon>Delete</a></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:if test="${countB != 0}"> 
                <div class="numberP">
                    <c:forEach begin="1" end="${endPage}" step="1" var="i">
                        <a href="listblog?index=${i}" class = "${index eq i ? 'active' : 'inactive'}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>
            <c:if test="${countB != 0}"> 
                <div class="numberP">
                    <c:forEach begin="1" end="${endPage}" step="1" var="i">
                        <a href="listblog?index=${i}" class = "${index eq i ? 'active' : 'inactive'}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>
            <c:if test="${countB != 0}"> 
                <div class="numberP">
                    <c:forEach begin="1" end="${endPage}" step="1" var="i">
                        <a href="listblog?index=${i}" class = "${index eq i ? 'active' : 'inactive'}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>

        </div>
        <!-- ##### Blog Area End ##### -->
<jsp:include page="footer.jsp"></jsp:include> 
<jsp:include page="footer.jsp"></jsp:include> 
        <!-- ##### Footer Area Start ##### -->
<!--        <footer class="footer-area section-padding-100-0 bg-img gradient-background-overlay" style="background-image: url(img/bg-img/cta.jpg);">
             Main Footer Area 
<!--        <footer class="footer-area section-padding-100-0 bg-img gradient-background-overlay" style="background-image: url(img/bg-img/cta.jpg);">
             Main Footer Area 
            <div class="main-footer-area">
                <div class="container">
                    <div class="row">

                         Single Footer Widget 
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                 Widget Title 
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

                         Single Footer Widget 
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                 Widget Title 
                                <div class="widget-title">
                                    <h6>Hours</h6>
                                </div>
                                 Office Hours 
                                <div class="weekly-office-hours">
                                    <ul>
                                        <li class="d-flex align-items-center justify-content-between"><span>Monday - Friday</span> <span>09 AM - 19 PM</span></li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Saturday</span> <span>09 AM - 14 PM</span></li>
                                        <li class="d-flex align-items-center justify-content-between"><span>Sunday</span> <span>Closed</span></li>
                                    </ul>
                                </div>
                                 Address 
                                <div class="address">
                                    <h6><img src="img/icons/phone-call.png" alt=""> +45 677 8993000 223</h6>
                                    <h6><img src="img/icons/envelope.png" alt=""> office@template.com</h6>
                                    <h6><img src="img/icons/location.png" alt=""> Main Str. no 45-46, b3, 56832, Los Angeles, CA</h6>
                                </div>
                            </div>
                        </div>

                         Single Footer Widget 
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                 Widget Title 
                                <div class="widget-title">
                                    <h6>Useful Links</h6>
                                </div>
                                 Nav 
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

                         Single Footer Widget 
                        <div class="col-12 col-sm-6 col-xl-3">
                            <div class="footer-widget-area mb-100">
                                 Widget Title 
                                <div class="widget-title">
                                    <h6>Featured Properties</h6>
                                </div>
                                 Featured Properties Slides 
                                <div class="featured-properties-slides owl-carousel">
                                     Single Slide 
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                     Single Slide 
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                     Single Slide 
                                    <div class="single-featured-properties-slide">
                                        <a href="#"><img src="img/bg-img/fea-product.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

             Copywrite Text 
            <div class="copywrite-text d-flex align-items-center justify-content-center">
                <p> Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                     Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
            </div>
        </footer>-->
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
                        function showList(s) {
                            var m = document.getElementById(s);
                            if (m.style.display === "none") {
                                m.style.display = "block";
                            } else {
                                m.style.display = "none";
                            }
                        }
        </script>
    </body>

</html>
