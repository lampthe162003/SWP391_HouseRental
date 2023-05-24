<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign Up Form by Colorlib</title>

        <!-- Font Icon -->
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <form method="" action="" class="register-form"
                                  id="register-form">

                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> <input
                                        type="email" name="email" id="email" placeholder="Email" />
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="pass" id="pass" placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass" id="re_pass"
                                           placeholder="Repeat your password" />
                                </div>
                                <div class="form-group">
                                    <label for="name"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                        type="text" name="name" id="name" placeholder="Full Name" />
                                </div>
                                <div class="form-group" style="display: flex ; justify-content: left">
                                    <input type="radio">Male
                                    <input type="radio">Female
                                </div>
                                <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="number" name="phonenumber" id="phonenumber"
                                           placeholder="Phone numbers" />
                                </div>
                                <div class="form-group">
                                    <label for="adress"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                        type="text" name="adress" id="adress" placeholder="Adress" />
                                </div>
                                <div class="form-group" style="display: flex ; justify-content: left">
                                    <input type="radio">User
                                    <input type="radio">Customers
                                </div>
                                <div>
                                    <input type="file">
                                </div>
                                <div class="form-group zmdi zmdi-account material-icons-name">Security question:
                                    <select style="width: 150px ; border-radius: 10px; padding-left: 10px " name="question" id="question" placeholder="">
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                    </select>
                                </div>
                                <div class="form-group zmdi zmdi-account material-icons-name">Security answers:
                                    <select style="width: 150px ; border-radius: 10px; padding-left: 10px " name="answers" id="answers" placeholder="">
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                        <option>Hello</option>
                                    </select>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup"
                                           class="form-submit" value="Register" />
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure>
                                <img src="images/signup-image.jpg" alt="sing up image">
                            </figure>
                            <a href="Login.jsp" class="signup-image-link">I am already</a>
                        </div>
                    </div>
                </div>
            </section>


        </div>
        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>



    </body>
    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>