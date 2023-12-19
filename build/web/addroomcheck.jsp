<%-- 
    Document   : addroomcheck
    Created on : Jul 5, 2023, 8:47:44 PM
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
                alert("Room added Succesfully!");
                window.location.href="addroom.jsp";
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



        stmt.executeUpdate("insert into roomdetails value('" + roomno + "','"  + description + "','"  + prize + "','" + "Available" + "')");
         
        out.println("<script>UserAlert();</script>");
        %>
        </center>
        </body>
        </html>

