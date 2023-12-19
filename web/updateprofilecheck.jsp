<%-- 
    Document   : updateprofilecheck
    Created on : Jul 15, 2023, 6:57:22 AM
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
                alert("Profile updated Succesful!");
                window.location.href="userhome.jsp";
            }
        </script>
    </head>
    <body>
    <center>
        <%@ include file="connfile.jsp" %>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String username = (String) session.getAttribute("username");
            stmt.executeUpdate("update signup set name='" + name + "',email='" + email + "',mobile='" + mobile + "' where email='" + username + "'");
            out.println("<script>UserAlert();</script>");
        %>
    </center>
</body>
</html>


