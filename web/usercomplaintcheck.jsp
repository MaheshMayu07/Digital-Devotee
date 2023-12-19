<%-- 
    Document   : usercomplaint
    Created on : Jul 4, 2023, 8:14:25 PM
    Author     : likir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <title>Login Page</title>
        <script>
            function UserAlert()
            {
                alert("Complaint sent successfully!");
                window.location.href="userhome.jsp";
            }
        </script>
    </head>
    <body>
    <center>
        
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String complaint = request.getParameter("complaint");
            stmt.executeUpdate("insert into usercomplaints value('" + name + "','" + email + "','" + complaint + "')");
            out.println("<script>UserAlert();</script>");
        %>
    </center>
</body>
</html>
