<%-- 
    Document   : userlogin
    Created on : Jun 14, 2023, 10:26:46 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Digital Devotee</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap" rel="stylesheet">
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
                opacity: 2;
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
            body {
                font-family: Arial, sans-serif;
                background-color: #f1f1f1;
                margin: 0;
                padding: 0;
            }

            .container {
                background-image: url('images/log2.jpg');
                background-size: cover; 
                background-position: center;
                background-repeat: no-repeat;
                
                max-width: 600px;
                height: 250px;
                margin-top: 150px;
                margin-left: 4in;
                padding: 20px;
                
/*                max-width: 400px;
                margin: 100px auto;
                padding: 20px;*/
                background-color: #ffffff;
                border-radius: 5px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            h2 {
                color: #ffffff;
                text-align: center;
                margin-bottom: 30px;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-bottom: 16px;
            }
                 input[type="text"]:hover,
                     input[type="password"]:hover{
                         background-color: #c3c3c3;
            } 

            button {
                background-color: #4caf50;
                color: #ffffff;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 100%;
            }

            button:hover {
                background-color: #45a049;
            }

            .links {
                margin-top: 10px;
                text-align: center;
            }

            .links a {
                color: #4caf50;
                text-decoration: none;
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
                    <li><a href="index.jsp">Services</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>
        </div>
        <div class="container">
          <h2>Admin Login</h2>
          <form method="POST" action="adminlogincheck.jsp">
          
              <input type="text" placeholder="Username" name="username" required>
              <input type="password" placeholder="Password"  name="password" required>
              <button type="submit">Login</button>
              <div class="links">
              </div>
          </form>
      </div>
    </body>
</html>

