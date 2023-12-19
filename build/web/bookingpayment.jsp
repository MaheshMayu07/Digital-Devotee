<%-- 
    Document   : bookingpayment
    Created on : Jul 11, 2023, 6:43:28 PM
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
                alert("Room Booked successfully!");
                window.location.href="userhome.jsp";
            }
        </script>
    </head>
    <body>
    <center>
        <%
            String roomno = request.getParameter("roomno");
            String price = request.getParameter("price");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String checkinDT = request.getParameter("checkinDT");
            stmt.executeUpdate("insert into currentbookings value('" + roomno + "','" + price + "','" + name + "','" + email + "','" + mobile + "','" + checkinDT + "')");


            stmt.executeUpdate("update roomdetails set status='Booked' where roomno='" + roomno + "'");


            out.println("<script>UserAlert();</script>");

        %>
    </center>
</body>
</html>