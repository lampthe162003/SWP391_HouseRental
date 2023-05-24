<%-- 
    Document   : login
    Created on : Feb 28, 2023, 9:11:34 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-image: url('image/bgrlogin.jpg');
                width: 100%;
                background-size: cover;
                background-repeat: no-repeat;
            }
            .sub input:hover{
                background-color: #ccc;
                color: black;
            }
            .sub input{
                color: white;
                height: 40px;
                width: 255px;
                background-color: #333;
                border-radius: 4px;
                cursor: pointer;
                margin-bottom: 5px;
                margin-top: 15px
            }
            p{
                font-size: 18px;
            }
            .fx p{
                margin-top: 10px;
            }
            .fx input{
                height: 30px;
                width: 245px;
                border: 1px solid #ccc;
                border-radius: 4px;
                padding-left: 8px;
            }
            .regi{
                font-size: 15px;
            }
            .rad input{
                width: 20px;
                height: 20px;
                margin-left: 5px;
                margin-right: 5px;
            }
            .pr{
                
                display: block;
            }
            
        </style>
    </head>
    <body >
        <div style="display: grid;place-items: center;height: 650px">
            <div style="width: 30%; height: 530px;background-color: #e8e8e8;border-radius: 20px;box-shadow: 0px 0px 5px #ccc;">
                <form action="register" method="post">
                    <div style="padding: 20px 0;padding-bottom: 10px">
                        <h1 style="text-align: center">Sign Up</h1>
                    </div>
                    <div style="font-size: 20px" class="ws">
                        <div style="margin-left: 100px">
                            <div class="fx">
                                <p>Email:</p>
                                <input type="text" name="username" required="">
                                <p class="pr" style="color: red;margin-top: 0;">${erUser}</p>
                                <p>Password:</p>
                                <input type="password" name="password" required="">
                                <p class="pr" style="color: red;margin-top: 0;">${erPa}</p>
                                <p>Confirm:</p>
                                <input type="password" name="confirm" required="">
                                <p>Full name:</p>
                                <input type="text" name="fullname" required="">
                                <p>Address:</p>
                                <input style="margin-bottom: 15px" type="date" name="dob">
                                <p>Phone Number</p>
                                <input type="number" name="phone" required="">
                                <div style="display: flex" class="rad">
                                    <input type="radio" name="gt" value="1" checked="">Male
                                    <input type="radio" name="gt" value="0" style="margin-left: 20px">Female
                                </div>
                            </div>
                            <div class="sub">
                                <input type="submit" value="Register">
                            </div>
                            <div class="regi">
                                <label>Have an account?</label><a href="login">Login</a>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </body>
</html>
