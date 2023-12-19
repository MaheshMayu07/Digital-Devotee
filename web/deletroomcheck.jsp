<%-- 
    Document   : deletroomcheck
    Created on : Jul 16, 2023, 6:12:13 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="connfile.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function UserAlert()
            {
                alert("Room deleted Succesfully!");
                window.location.href="adminhome.jsp";
                
            }
        </script>
    </head>
    <body>
        <%
            String roomno = request.getParameter("roomno");
            stmt.executeUpdate("delete from roomdetails where roomno='" + roomno + "'");
            out.println("<script>UserAlert();</script>");

        %>
    </body>
</html>

