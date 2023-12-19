<%-- 
    Document   : editsevacheck1
    Created on : Jul 3, 2023, 6:40:23 PM
    Author     : likir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 <head>
     
    <script>
            function UserAlert(){
                alert("Seva edited");
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

    
    stmt.executeUpdate("update sevas set sevaname='"+sevaname+"',description='"+description+"',amount='"+amount+"',time='"+time+"' where sevaname='"+sevaname+"'");
    out.println("<script>UserAlert();</script>");

%>
 </body>
</html>
