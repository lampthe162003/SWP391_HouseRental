<%-- 
    Document   : favoriteblog
    Created on : Jun 18, 2023, 3:47:52 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <!--        <link rel="stylesheet" href="style.css">-->
        <link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="/images/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="assets/css/styleHome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="banner">
                <c:if test="${acc!=null}">
                <div id="cr"><a id="createblog" href="postblog">Create Blog</a></div>
            </c:if>
            <c:forEach items="${lsB}" var="b">
                <div class="item1">
                    <div class="item2">
                        <div class="inblog-img">
                            <img src="./assets/images/${b.getImage()}" alt="${b.getImage()}"/>
                        </div>
                        <div class="inblog-infor">
                            <a href="detailblog?id=${b.getId()}&idPoster=${b.getPosterId()}"><h5>${b.getTopic()}$</h5></a>
                            <div class="pra">${b.getContent()}</div>
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
