<%-- 
    Document   : signupcheck
    Created on : Jun 21, 2023, 5:16:21 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String dob = request.getParameter("dob");
String mobile = request.getParameter("mobile");
String password = request.getParameter("password");

stmt.executeUpdate("insert into signup value('" + name + "','"  + email + "','"  + dob + "','" + mobile + "','" + password + "')");
response.sendRedirect("userlogin.jsp");

%>
