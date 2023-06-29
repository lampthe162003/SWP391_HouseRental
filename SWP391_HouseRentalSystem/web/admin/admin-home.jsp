<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <style>
            /* Thay đổi màu sắc cho header */
            .navbar {
                background-color: #333;
                color: white;
            }

            /* Thay đổi font chữ cho tiêu đề */
            h2 {
                font-family: Arial, Helvetica, sans-serif;
                text-align: center;
                color: #333;
            }

            /* Thay đổi màu sắc và font chữ cho bảng dữ liệu */
            table {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
                margin-bottom: 20px;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #333;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
    </body>
</html>
