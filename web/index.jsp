<%-- 
    Document   : index
    Created on : May 29, 2023, 8:14:37 AM
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
        <!--        <link rel="stylesheet" href="mystyle.css">-->
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
            .indeximg img{
                width:660px;
                margin-top: 35px;
            }
            .indeximg1 img{
                margin-left: 5.5in;
                width: 3in;
                height: 3in;
            }
            .featurehead h1{
                text-align: center;
                margin-top: 80px;
            }
            .features {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
                margin: 40px 0;
                background-color: whitesmoke;
            }
            .feature {
                flex-basis: 30%;
                max-width: 300px;
                padding: 20px;
                text-align: center;
                margin: 20px;
                background-color: whitesmoke;
                border-radius: 4px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
                border: 2px solid black;
            }
            .feature img {
                width: 80px;
                height: 80px;

            }
            .feature h3 {
                font-size: 24px;
                margin-bottom: 10px;
                color:#cccc00;
            }
            .feature p {
                font-size: 16px;
                color: #666;
            }

            /* Style for the container */
            .container {
/*                max-width: 1200px;*/
                margin: 0 auto;
                padding: 20px;
            }

            /* Style for the footer section */
            .has-bg-img {
                background-image: url("your-image-url.jpg");
                background-size: cover;
                background-position: center;
                padding: 80px 0;
            }

            .footer {
                background-color: rgba(0, 0, 0, 0.8);
                color: #fff;
                padding: 40px 0;
            }

            /* Style for the footer lists */
            .footer-lists {
                display: flex;
                justify-content: space-between;
            }

            /* Style for each list */
            .list {
                flex-basis: 30%;
                max-width: 30%;
                padding: 0 15px;
            }

            /* Style for the list headings */
            .list-head h6 {
                font-weight: bold;
                color: #fff;
            }

            /* Style for the list items */
            .list-body {
                margin-top: 20px;
            }

            /* Style for the logo */
            .logo {
                display: flex;
                align-items: center;
                text-decoration: none;
            }

            .logo h6 {
                font-size: 20px;
                margin-left: 10px;
                color: #fff;
            }

            /* Style for the description paragraphs */
            p {
                margin-bottom: 10px;
                color: #fff;
            }

            /* Style for the links */
            a {
                color: #fff;
                text-decoration: none;
            }

            a:hover {
                color: #007bff;
            }

            /* Style for the contact info */
            .list-body p i {
                margin-right: 10px;
                color: #fff;
            }

            /* Media query for responsiveness */
            @media (max-width: 768px) {
                .footer-lists {
                    flex-wrap: wrap;
                }

                .list {
                    flex-basis: 50%;
                    max-width: 50%;
                    padding: 0 15px;
                }

                .list-head {
                    margin-bottom: 10px;
                }
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
                    <li><a href="#aboutus">Contact</a></li>

                </ul>
            </div>
        </div>
        <div class="indeximg">
            <img src="images/temp7.jpg">
            <img src="images/temp7.jpg">
        </div>
        <div class="indeximg1">
            <img src="images/temp2.jpg">
        </div>
        <div class="featurehead">
            <h1 id="services">Online Services</h1>
        </div>
        <section class="features">
            <div class="feature">
                <img src="images/room1.png" alt="Icon 1">
                <h3>Room booking</h3>
                <p>We are delighted to offer you the opportunity to book rooms for your stay at our temple. We understand the importance of providing a comfortable and serene environment for your spiritual journey.</p>
            </div>
            <div class="feature">
                <img src="images/donation.png" class="images" alt="error"/>
                <h3>E-hundi</h3>
                <p> Your contributions play a crucial role in sustaining and enriching our spiritual community. Today, we would like to introduce you to our eHundi initiative, a convenient and secure way to make offerings online.</p>
            </div>
            <div class="feature">
                <img src="images/seva1.png" alt="Icon 3">
                <h3>Sevas</h3>
                <p>We offer you the opportunity to book sevas, allowing you to engage in sacred rituals and forge a deeper connection with the divine. Your  participation in these spiritual practices adds vibrancy to our temple.</p>
            </div>
        </section>

        <!-- Contact Section -->

        <section class="has-bg-img py-0">
            <div class="container">
                <div class="footer">
                    <div class="footer-lists">
                        <ul class="list">
                            <li class="list-head">
                                <h6  id="aboutus" class="font-weight-bold">ABOUT US</h6>
                            </li>
                            <li class="list-body">
                                <a href="homepage.jsp" class="logo">
                                    <!--                          <img src="images/logo.png" alt="Image"> -->


                                    <h6>Digital Devotee</h6>
                                </a>
                                <p>Allows to perform spiritual tasks online</p> 
                                <p class="mt-3">
                                    Copyright <script>document.write(new Date().getFullYear())</script> &copy; <a class="d-inline text-primary" href="https://twitter.com/SparkyHarsh">Likith </a>
                                </p>                   
                            </li>
                        </ul>
                        <ul class="list">
                            <li class="list-head">
                                <h6 class="font-weight-bold">USEFUL LINKS</h6>
                            </li>
                            <li class="list-body">
                                <div class="row">
                                    <div class="col">
                                        <a href="#aboutus">About</a>
                                        <a href="#services">Service</a>


                                    </div>
                                    <div class="col">

                                        <a href="https://onlinetemple.com/blog/">Blogs on online pooja</a>
                                        <a href="https://onlinetemple.com/faq/">Faq on online pooja</a>
                                        <a href="PrivacyPolicy.jsp">Privacy Policy</a>                  
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <ul id="Contact" class="list">
                            <li class="list-head">
                                <h6 class="font-weight-bold">CONTACT INFO</h6>
                            </li>
                            <li class="list-body">
                                <p>Contact us for any queries.</p>
                                <p><i class="fas fa-map-marker-alt"></i> ASC Trust. Rajajinagar-Blr</p>
                                <p><i class="far fa-envelope"></i>  likiraghu18@gmail.com.com</p>

                            </li>
                        </ul>
                    </div>
                </div>    
            </div>
        </section>
    </body>
</html>
