<%-- 
    Document   : deleteseva
    Created on : Jul 3, 2023, 5:53:17 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 <head>
     
    <script>
            function UserAlert(){
                alert("Seva deleted");
                window.location.href="sevas.jsp";
    }
    </script> 
 </head>
 <body>
     <%@ include file="connfile.jsp" %>
   <% 
     String sevaname = request.getParameter("seva_name");
    stmt.executeUpdate("delete from sevas where sevaname='" + sevaname + "'");
    out.println("<script>UserAlert();</script>");

%>
 </body>
</html>
