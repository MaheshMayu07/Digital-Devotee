<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>
<%@page import="network.mail"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String msg = "Dear Devotee , your password is " + password;
    mail m = new mail();
    m.secretMail(msg, name, email);
    System.out.println("success");
    response.sendRedirect("maildummy.jsp");
%>