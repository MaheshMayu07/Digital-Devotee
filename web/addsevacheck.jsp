<%-- 
    Document   : addsevacheck
    Created on : Jul 3, 2023, 5:31:34 PM
    Author     : likir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

        <script>
            function addseva(){
                alert("Seva Added");
                window.location.href="sevas.jsp";
            }
        </script> 
    </head>
    <body>
        <%@ include file="connfile.jsp" %>
        <%
            String sevaname = request.getParameter("seva_name");
            String description = request.getParameter("seva_description");
            String amount = request.getParameter("seva_amount");
            String time = request.getParameter("seva_time");

            stmt.executeUpdate("insert into sevas value('" + sevaname + "','" + description + "','" + amount + "','" + time + "')");
            out.println("<script>addseva();</script>");

        %>
    </body>
</html>