<%-- 
    Document   : maildummy
    Created on : Jul 14, 2023, 6:06:24 PM
    Author     : likir
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
        function UserAlert()
        {
                alert("Your Password has been sent to your email!!");
            window.location.href="userlogin.jsp";
        }
        </script>
    </head>
    <body>
<center>
<%@ include file="connfile.jsp" %>
<% 
        
            out.println("<script>UserAlert();</script>");
        %>
</center>
</body>
</html>