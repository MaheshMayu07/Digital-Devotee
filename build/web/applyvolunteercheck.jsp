<%-- 
    Document   : applyvolunteercheck
    Created on : Jul 4, 2023, 11:08:23 PM
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
                alert("Pass applied, Please carry your ID Proof to collect the pass at temple!");
                window.location.href="userhome.jsp";
            }
        </script>
    </head>
    <body>
    <center>
        <% String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String document_type = request.getParameter("document");
            String document = request.getParameter("file-upload");
            String proofno = request.getParameter("proof-number");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            stmt.executeUpdate("insert into volunteerapply value('" + name + "','" + dob + "','" + document_type + "','" + document + "','" + proofno + "','" + email + "','" + mobile + "')");
            out.println("<script>UserAlert();</script>");
        %>
    </center>
</body>
</html>