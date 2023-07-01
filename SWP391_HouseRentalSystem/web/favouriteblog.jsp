<%-- 
    Document   : favoriteblog
    Created on : Jun 18, 2023, 3:47:52 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" href="img/core-img/favicon.ico">

        
        <!--        <link rel="stylesheet" href="style.css">-->
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
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="banner">
                <div style="width: 15%;margin: 0 auto;"><h2>List favourite blog</h2></div>
            <c:forEach items="${lsB}" var="b">
                <div class="item1">
                    <div class="item2">
                        <div class="inblog-img">
                            <img src="./assets/images/${b.getImage()}" alt="${b.getImage()}"/>
                        </div>
                        <div class="inblog-infor">
                            <a href="detailblog?id=${b.getId()}&idPoster=${b.getPosterId()}"><h5>${b.getTopic()}</h5></a>
                            <div class="pra">${b.getContent()}</div>
                        </div>
                            <div class="optionP" onclick="showList('${b.getId()}')"><ion-icon name="ellipsis-horizontal-outline"></ion-icon></div>
                        
                        <div id="${b.getId()}" class="listOption" style="display: none;">
                            <div><a href="favouriteblog?blogId=${b.getId()}&userId=${sessionScope.acc.getId()}&index=${index}"><ion-icon name="trash-bin-outline"></ion-icon>Delete</a></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <c:if test="${countB != 0}"> 
                <div class="numberP">
                    <c:forEach begin="1" end="${endPage}" step="1" var="i">
                        <a href="listfavouriteblog?index=${i}" class = "${index eq i ? 'active' : 'inactive'}">${i}</a>
                    </c:forEach>
                </div>
            </c:if>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>  
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
