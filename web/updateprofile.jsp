<%-- 
    Document   : updateprofile
    Created on : Jul 14, 2023, 7:28:09 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function mybook(){
                window.location.href="userhome.jsp";
            }            
        </script>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #f1f1f1;
            }

            .container {
                max-width: 400px;
                margin: 100px auto;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                padding: 20px;
            }

            h2 {
                text-align: center;
                color: #ff9900;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                display: block;
                font-size: 16px;
                font-weight: bold;
                margin-bottom: 5px;
                color: #333;
            }

            input[type="text"],
            input[type="email"],
            input[type="password"],
            input[type="date"]{
                width: 97%;
                padding: 10px;
                font-size: 16px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .btn {
                display: block;
                width: 100%;
                padding: 10px;
                font-size: 16px;
                background-color: #4CAF50;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .btn:hover {
                background-color: #45a049;
            }
            .btn1 {
                  margin-left: 2in;
                  margin-top:5px;
                background-color: black;
                border: none;
                color: white;
/*                padding: 12px 16px;*/
                font-size: 18px;
                cursor: pointer;
                border-radius: 10px;
            }

            /* Darker background on mouse-over */
            .btn1:hover {
                background-color: RoyalBlue;
            }
        </style>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("username");
            rst = stmt.executeQuery("select * from signup where email='" + username + "'");
            while (rst.next()) {

        %>
        <div class="container">
            <h2>Profile</h2>
            <form id="loginForm" method="post" action="updateprofilecheck.jsp">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" value="<%=rst.getString("name")%>" name="name" pattern="[A-Za-z]{1,} { }" required=""  title="Please enter only characters" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" value="<%=rst.getString("email")%>" name="email" required>
                </div>
                <div class="form-group">
                    <label for="dob">Date Of Birth:</label>
                    <input type="text" id="dob" value="<%=rst.getString("dob")%>" name="dob" readonly>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile Number:</label>
                    <input type="text" id="mobile" name="mobile" value="<%=rst.getString("mobile")%>" pattern="[6789][0-9]{9}" title="Please enter a valid phone number.. Number should begin with 6,7,8,9" required>
                </div>
                <input type="submit" class="btn" value="Update Profile">
            </form>
                <button onclick="mybook();" class="btn1">Back</button>
        </div>
        <%
            }
        %>
    </body>
</html>
