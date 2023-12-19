<%-- 
    Document   : logincheck
    Created on : Apr 26, 2023, 9:22:50 AM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function adminalert()
            {
                alert("Login Succesful!");
                window.location.href="adminhome.jsp";
            }
            function InvalidAlert()
            {
                alert("Invalid Credentials!");
                window.location.href="adminlogin.jsp";
            }
        </script>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            rst = stmt.executeQuery("select * from adminlogin where username= '" + username + "' and password = '" + password + "'");
            if (rst.next()) {
                out.println("<script>adminalert();</script>");

            } else {
                out.println("<script>InvalidAlert();</script>");
            }
        %>
    </body>
</html>
