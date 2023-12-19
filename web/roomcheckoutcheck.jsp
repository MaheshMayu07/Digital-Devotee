<%-- 
    Document   : roomcheckoutcheck
    Created on : Jul 10, 2023, 6:28:02 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<%
String roomno = request.getParameter("roomno");
String price = request.getParameter("price");
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String checkinDT = request.getParameter("checkinDT");
 stmt.executeUpdate("delete from currentbookings where roomno='" + roomno + "'");
//stmt.executeUpdate("insert into currentbookings value('" + roomno + "','"  + price + "','"  + name + "','"  + email + "','"  + mobile + "','" + checkinDT + "')");
response.sendRedirect("roomcheckout.jsp");

stmt.executeUpdate("update roomdetails set status='Available' where roomno='"+roomno+"'");
%>

