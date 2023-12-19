<%-- 
    Document   : forgotpassword
    Created on : Jul 14, 2023, 5:23:16 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap" rel="stylesheet">
        <title>Forgot password</title>
        <style>
            body{
                background-color:#ffffff ;
            }
            .Navbar{
                border: 2px solid black;
                height: 60px;    
                background-color:#525252;
                color: #ff0000;
                margin:0px 0px;
                border-radius: 10px;
                position: fixed; /* Set the navbar to fixed position */
                top: 0; /* Position the navbar at the top of the page */
                width: 99%;
            }
            .Navimg{
                display: inline-block;
                float: left;
            }
            .templename{

                display: inline-block; 
                float: left;
                margin: -1px 5px;
            }
            .Maincontent{
                display: inline-block;
                float: left;
                margin: 15px 70px;
            }
            .Navimg img{
                height: 50px;
                width: 50px;
                display: inline-block;
                border-radius: 50%;
                border: 2px solid white;
            }
            .Maincontent a{
                color: #cccccc;
                text-decoration: none;
                padding: 0px 7px;
                font-size: 20px;
            }
            .main-menu {
                float: right;
                padding-right: 60px;
            }
            .main-menu li {               
                display: inline-block;
                /* line-height: 79px; */
                margin-left: 15px;
                margin: 9px 10px;
                position: relative;

            }
            .main-menu li:first-child {
                margin-left: 0px;
            }

            .main-menu li a {
                text-decoration:none;
                padding: 10px 15px;
                font-size: 16px;
                text-transform: uppercase;
                letter-spacing: 0.5px;
                font-weight: 700;
                color: #fff;
                border: 2px solid transparent;
                transition: all 0.5s;
            }
            .main-menu li.has-submenu a:after {
                text-decoration:none;
                content: '\f107';
                font-family: "FontAwesome";
                margin-left: 5px;
            }

            .main-menu li.has-submenu ul li a:after {
                display: none;
            }

            .main-menu li .sub-menu {
                position: absolute;
                width: 160px;
                background-color: #333333;
                opacity: 0;
                visibility: hidden;
                transition: all 0.5s;
            }

            .main-menu li:hover .sub-menu {
                color: #ffffff;
                opacity: 1;
                visibility: visible;
            }
            .main-menu li .sub-menu li {
                text-decoration:none;
                display: block;
                line-height: 20px;
                margin-left: 0px;
                margin-bottom: 15px;
                padding-bottom: 15px;
                border-bottom: 1px solid #333333;
            }

            .main-menu li .sub-menu li:first-child {
                padding-top: 15px;
            }

            .main-menu li .sub-menu li:last-child {
                margin-bottom: 0px;
                border-bottom: none;
            }

            .main-menu li .sub-menu li a {
                font-size: 14px;
                text-decoration:none;
                font-weight: 500;
                padding: 0px 15px;
                letter-spacing: 0.5px;
                border: none;
                transition: all 0.5s;
            }
            .main-menu li .sub-menu li a:hover {
                color: #f5a425;
                border: 1px solid whitesmoke ;
                text-decoration:none;
            }
            .main-menu li a:hover{
                color: #f5a425;
            }
            h4{
                text-shadow: 1px 1px 10px white ;
                letter-spacing: 0.1em;
                font-family: 'Tilt Prism', cursive; /* font-style: inherit;*/
                font-size: 28px;
                margin: 15px 10px;             
            }

            .upseva {
                border: 2px solid black;
                width: 700px;
                height: 195px;
                margin-left: 4in;
                margin-top: 2.5in;
                border-radius: 20px;
                background-color: #C4D7B2;
            }


            #opt {
                margin-left: 7px;
            }

            .group {
                margin-bottom: 15px;
            }

            .group label {
                font-size: 20px;
                margin-left: 10px;
                display: block;
                font-weight: bold;
            }

            .group input[type="email"] {
                margin-left: 10px;

                width: 95%;
                padding: 8px;
                border-radius: 3px;
                border: 1px solid #ccc;
            }

            .group input[type="submit"] {
                background-color: rgb(29, 122, 197);
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                margin-left: 3in;

            }

            .group input[type="submit"]:hover {              
                background-color: firebrick;
                box-shadow: 4px 4px 4px black;
                border-bottom-right-radius: 6px;
                border-bottom-left-radius: 6px
            }
            .upseva h2{
                text-align: center;
                background-color: #F7FFE5; 
                color:#00d7b0;
            }
        </style>
    </head>
    <body>
        <div class="Navbar">
            <div class="Navimg">
                <img src="images/gopura.jpg"/>
            </div>
            <div class="templename">
                <h4>Digital Devotee</h4>
            </div>
            <div>
                <ul class="main-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li class="sub-menu"><a href="#">Login</a>
                        <ul class="sub-menu">
                            <li><a href="adminlogin.jsp">Admin Login</a></li>
                            <li><a href="userlogin.jsp">User Login</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu"><a href="signup.jsp">Signup</a>
                    <li><a href="#services">Services</a></li>
                    <li><a href="">Contact</a></li>

                </ul>
            </div>
        </div>
        <div class="upseva">
            <h2><u>Forgot password</u></h2>
            <form action="forgotpassword1.jsp" method="post">
                <div class="group">
                    <label for="seva_name">Enter Your Email </label>
                    <input type="email" id="seva_name" name="email" required>
                </div>
                <div class="group">
                    <input type="submit" value="Next">
                </div>
            </form>
        </div>
    </body>
</html>