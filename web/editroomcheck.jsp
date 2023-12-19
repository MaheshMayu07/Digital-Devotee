<%-- 
    Document   : editroomcheck
    Created on : Jul 16, 2023, 3:17:20 PM
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
                alert("Room edited Succesfully!");
                window.location.href="adminhome.jsp";
            }
        </script>
    </head>
    <body>
    <center>
        <%@ include file="connfile.jsp" %>
        <%
            String roomno = request.getParameter("roomno");
            String description = request.getParameter("description");
            String prize = request.getParameter("prize");
stmt.executeUpdate("update roomdetails set description='"+description+"',prize='"+prize+"' where roomno='"+roomno+"'");
           out.println("<script>UserAlert();</script>");
            
        %>
    </center>
</body>
</html>

