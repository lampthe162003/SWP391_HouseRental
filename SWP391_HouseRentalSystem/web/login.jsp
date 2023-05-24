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
        <title>Login</title>
        <style>
            *{
                margin: 0;
                padding: 0;
            }
            body{
                background-image: url('images/background_house.jpg');
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
                width: 250px;
                background-color: #333;
                border-radius: 4px;
                cursor: pointer;
                margin-bottom: 5px;
                margin-top: 20px
            }
            p{
                font-size: 18px;
            }
            .fx p{
                margin-top: 10px;
            }
            .fx input{
                height: 30px;
                width: 238px;
                border: 1px solid #ccc;
                border-radius: 4px;
                padding-left: 8px;
                /*                margin-bottom: 20px;*/
            }
            .regi{
                margin-bottom: 1em;
                font-size: 15px;
            }
        </style>
    </head>
    <body>
        <div style="display: grid;place-items: center;height: 600px">
            <div style="margin-top: 10em;width: 30%; height: 330px;background-color: #e8e8e8;border-radius: 20px;box-shadow: 2px 2px 5px #ccc;">
                <form action="login" method="post">
                    <div style="padding: 20px 0">
                        <h1 style="text-align: center">Login</h1>
                    </div>
                    <div style="font-size: 20px" class="ws">
                        <div style="margin: 0 25%">
                            <div class="fx">
                                <p>Email:</p>
                                <input type="text" name="username" required="">
                                <p style="color: red;display: block;margin-top: 3px;width: 250px;font-size: 15px">${erlogin}</p>
                                <p>Password:</p>
                                <input type="password" name="password" required="">
                            </div>
                            <div class="sub">
                                <input type="submit" value="Login">
                            </div>
                            <div class="regi" >
                                <a href="register">Forgot password?</a>
                            </div>
                            <div class="regi" >
                                <label>Don't have an account?</label><a href="register">Sign up</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
