<%-- 
    Document   : header
    Created on : Jun 15, 2023, 2:25:42 AM
    Author     : win
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-language" content="vi">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>RentHouse System</title>
        <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/styleHome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
/*            #banner{
                width: 100%; dom
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
                transition: transform 0.3s ease-in-out;
            }
            .item1:hover{
                transform: scale(1.2);
                transition: transform 0.3s ease-in-out;
            }
            .item2{
                display: flex;
                width: 95%;
                height: 90%;
                border-radius: 10px;
                margin: 0 auto;
                margin-top: 0.5em;
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
            }*/
            .dropdown-menu {
                display: none;
            }
            .dropdown.show .dropdown-menu {
                display: block;
            }
            #favo{
                padding-bottom: 0.5em;
                width: 10em;
                height: 5em;
                border-radius: 10px;
                box-shadow: 0px 0px 5px gray;
                position: absolute;
                top: 3em;
                right: 17em;
                display: none;
                background-color: white
            }
            #favo a{
                margin-left: 1em;
                padding-top: 0.5em;
/*                line-height: 2.5em;*/
                display: inline-flex;
            }
            #favo a ion-icon{
                font-size: 16px;
                margin-right: 0.2em;
            }
            #favo a:hover{
                color: orange;
            }
        </style>
    </head>
    <body>
        <div class="container container-header clearfix"><img id="top-logo" src="assets/images/logo/logo2.png">
            <div style="position: relative" class="user-welcome clearfix js-reload-html-header">
                <c:if test="${sessionScope.acc == null}">
                    <a rel="nofollow" class="btn" href="/tin-da-luu.html"><i class="fas fa-heart"></i> Yêu thích <span
                            class="number-count js-save-post-total">0</span></a>
                    <a rel="nofollow" class="btn" href="login"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                    <a rel="nofollow" class="btn" href="register"><i class="fas fa-user"></i> Đăng ký</a>
                    <a rel="nofollow" class="btn btn-add-post" href="posthouse">Đăng tin mới <i class="fas fa-plus"></i></a>

                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <div class="user-welcome clearfix js-reload-html-header"><a class="welcome-text"
                                                                                href="Controller_Manager" rel="nofollow">
                            <img src="https://phongtro123.com/images/default-user.png"
                                 style="border: 1px solid #ddd; width: 40px; height: 40px; border-radius: 50%; margin-right: 5px;">
                            <div>
                                <span
                                    style="display: block;font-size: 1.2rem;margin-bottom: 3px;max-width: 300px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">Xin
                                    chào, <strong>${sessionScope.acc.fullname}</strong></span><span style="font-size: 0.9rem">Mã tài khoản:
                                    <strong>${sessionScope.acc.id}</strong></span>
                            </div>
                        </a>
                            <p rel="nofollow" class="btn" onclick="disF()"><i class="fas fa-heart"></i> Yêu thích <span
                                class="number-count js-save-post-total">0</span></p>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-th-large"></i> Quản lý tài khoản
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                <li><a class="dropdown-menu-item dang-tin" rel="nofollow" href="#"><i class="fas fa-pen"></i> Đăng tin cho thuê</a></li>
                                <li><a class="dropdown-menu-item quan-ly-tin-dang" rel="nofollow" href="#"><i class="fas fa-receipt"></i> Quản lý tin đăng</a></li>
                                <li><a class="dropdown-menu-item thong-tin-ca-nhan" rel="nofollow" href="#"><i class="fas fa-user-check"></i> Thông tin cá nhân</a></li>
                                <li><a class="dropdown-menu-item tin-da-luu" rel="nofollow" href="#"><i class="fad fa-heart"></i> Tin đã lưu</a></li>
                                <li><a class="dropdown-menu-item thoat js-user-logout" rel="nofollow" href="logout"><i class="fas fa-sign-out-alt"></i> Thoát</a></li>
                            </ul>
                        </div>            
                        <a rel="nofollow" class="btn btn-add-post" href="posthouse">Đăng tin mới <i class="fas fa-plus"></i></a>
                    </div>
                </c:if>
                <div id="favo">
                    <div style="width: 100%;height: 50%;border-bottom: 1px solid gray"><a href="#"><ion-icon name="home-outline"></ion-icon> Favorite house</a></div>
                    <div style="width: 100%;height: 50%;border-bottom: 1px solid gray"><a href="favouriteblog"><ion-icon name="book-outline"></ion-icon> Favorite blog</a></div>
                </div>
            </div>
        </div>
        <nav id="navbar-menu" class="">
            <ul id="menu-main-menu" class="container-menu clearfix level-1">
                <li class="navbar_item clearfix ${requestScope.categoryID == null ? 'active current-menu-item' : ''}"><a href="homeController">Trang
                        chủ</a></li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 1 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=1">Cho thuê phòng
                        trọ</a></li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 3 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=3">Cho thuê biệt thự</a>
                </li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 4 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=4">Cho thuê căn hộ</a>
                </li>
                <li class="navbar_item clearfix"><a href="homeController">Blog</a>
                </li>
                <li class="navbar_item clearfix"><a href="homeController">Hướng dẫn</a>
                </li>
            </ul>
        </nav>
        <script>
            function disF(){
                var x = document.getElementById('favo');
                if(x.style.display === 'none'){
                    x.style.display = 'block';
                }else{
                    x.style.display = 'none'
                }
            }
            $(document).ready(function () {
                $('.dropdown-toggle').click(function () {
                    $('.dropdown-menu').toggle();
                });
            });
        </script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
</html>
<%-- 
    Document   : header
    Created on : Jun 15, 2023, 2:25:42 AM
    Author     : win
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-language" content="vi">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>RentHouse System</title>
        <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/styleHome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
                transition: transform 0.3s ease-in-out;
            }
            .item1:hover{
                transform: scale(1.2);
                transition: transform 0.3s ease-in-out;
            }
            .item2{
                display: flex;
                width: 95%;
                height: 90%;
                border-radius: 10px;
                margin: 0 auto;
                margin-top: 0.5em;
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
            .dropdown-menu {
                display: none;
            }
            .dropdown.show .dropdown-menu {
                display: block;
            }
            #favo{
                padding-bottom: 0.5em;
                width: 10em;
                height: 5em;
                border-radius: 10px;
                box-shadow: 0px 0px 5px gray;
                position: absolute;
                top: 3em;
                right: 17em;
                display: none;
                background-color: white
            }
            #favo a{
                margin-left: 1em;
                padding-top: 0.5em;
/*                line-height: 2.5em;*/
                display: inline-flex;
            }
            #favo a ion-icon{
                font-size: 16px;
                margin-right: 0.2em;
            }
            #favo a:hover{
                color: orange;
            }
        </style>
    </head>
    <body>
        <div class="container container-header clearfix"><img id="top-logo" src="assets/images/logo/logo2.png">
            <div style="position: relative" class="user-welcome clearfix js-reload-html-header">
                <c:if test="${sessionScope.acc == null}">
                    <a rel="nofollow" class="btn" href="/tin-da-luu.html"><i class="fas fa-heart"></i> Yêu thích <span
                            class="number-count js-save-post-total">0</span></a>
                    <a rel="nofollow" class="btn" href="login"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a>
                    <a rel="nofollow" class="btn" href="register"><i class="fas fa-user"></i> Đăng ký</a>
                    <a rel="nofollow" class="btn btn-add-post" href="posthouse">Đăng tin mới <i class="fas fa-plus"></i></a>

                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <div class="user-welcome clearfix js-reload-html-header"><a class="welcome-text"
                                                                                href="Controller_Manager" rel="nofollow">
                            <img src="https://phongtro123.com/images/default-user.png"
                                 style="border: 1px solid #ddd; width: 40px; height: 40px; border-radius: 50%; margin-right: 5px;">
                            <div>
                                <span
                                    style="display: block;font-size: 1.2rem;margin-bottom: 3px;max-width: 300px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">Xin
                                    chào, <strong>${sessionScope.acc.fullname}</strong></span><span style="font-size: 0.9rem">Mã tài khoản:
                                    <strong>${sessionScope.acc.id}</strong></span>
                            </div>
                        </a>
                            <p rel="nofollow" class="btn" onclick="disF()"><i class="fas fa-heart"></i> Yêu thích <span
                                class="number-count js-save-post-total">0</span></p>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-th-large"></i> Quản lý tài khoản
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                <li><a class="dropdown-menu-item dang-tin" rel="nofollow" href="#"><i class="fas fa-pen"></i> Đăng tin cho thuê</a></li>
                                <li><a class="dropdown-menu-item quan-ly-tin-dang" rel="nofollow" href="#"><i class="fas fa-receipt"></i> Quản lý tin đăng</a></li>
                                <li><a class="dropdown-menu-item thong-tin-ca-nhan" rel="nofollow" href="#"><i class="fas fa-user-check"></i> Thông tin cá nhân</a></li>
                                <li><a class="dropdown-menu-item tin-da-luu" rel="nofollow" href="#"><i class="fad fa-heart"></i> Tin đã lưu</a></li>
                                <li><a class="dropdown-menu-item thoat js-user-logout" rel="nofollow" href="logout"><i class="fas fa-sign-out-alt"></i> Thoát</a></li>
                            </ul>
                        </div>            
                        <a rel="nofollow" class="btn btn-add-post" href="posthouse">Đăng tin mới <i class="fas fa-plus"></i></a>
                    </div>
                </c:if>
                <div id="favo">
                    <div style="width: 100%;height: 50%;border-bottom: 1px solid gray"><a href="#"><ion-icon name="home-outline"></ion-icon> Favorite house</a></div>
                    <div style="width: 100%;height: 50%;border-bottom: 1px solid gray"><a href="favouriteblog"><ion-icon name="book-outline"></ion-icon> Favorite blog</a></div>
                </div>
            </div>
        </div>
        <nav id="navbar-menu" class="">
            <ul id="menu-main-menu" class="container-menu clearfix level-1">
                <li class="navbar_item clearfix ${requestScope.categoryID == null ? 'active current-menu-item' : ''}"><a href="homeController">Trang
                        chủ</a></li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 1 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=1">Cho thuê phòng
                        trọ</a></li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 3 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=3">Cho thuê biệt thự</a>
                </li>
                <li class="navbar_item clearfix ${requestScope.categoryID == 4 ? 'active current-menu-item' : ''}"><a href="homeController?categoryID=4">Cho thuê căn hộ</a>
                </li>
                <li class="navbar_item clearfix"><a href="homeController">Blog</a>
                </li>
                <li class="navbar_item clearfix"><a href="homeController">Hướng dẫn</a>
                </li>
            </ul>
        </nav>
        <script>
            function disF(){
                var x = document.getElementById('favo');
                if(x.style.display === 'none'){
                    x.style.display = 'block';
                }else{
                    x.style.display = 'none'
                }
            }
            $(document).ready(function () {
                $('.dropdown-toggle').click(function () {
                    $('.dropdown-menu').toggle();
                });
            });
        </script>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
</html>
