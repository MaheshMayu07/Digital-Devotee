<%-- 
    Document   : selectsevacheck
    Created on : Jul 13, 2023, 8:38:10 PM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
        <script>
            function UserAlert()
            {
                alert("Payment Successsful");
               
            }           
        </script>
         <style>
            .print-button{margin-left: 2.5in;}
            
            </style>     
    </head>
    <body>
        <%@ include file="connfile.jsp" %>

        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String amount = request.getParameter("amount");
            String sevaname = request.getParameter("sevaname");
            String datetime = request.getParameter("datetime");
            String sevaId = request.getParameter("sevaId");
            stmt.executeUpdate("insert into bookedsevas value('" + name + "','" + email + "','" + sevaname + "','" + amount + "','" + sevaId + "','" + datetime + "')");
            out.println("<script>UserAlert();</script>");


        %>
        <div class="container">
           <%

                rst = stmt.executeQuery("select * from bookedsevas where sevaId='" + sevaId + "'");
                if (rst.next()) {
            %>
            <div class="row">
                <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <address>
                                <strong>ASC Trust</strong>
                                <br>
                                #18, 20th cross,
                                <br>
                                Rajajinagar, Bangalore
                                <br>
                                <abbr title="Phone">Phone:</abbr> 9902828340
                            </address>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                            
                            <p>Date:<em id="date"> </em></p>

                            <p>
                                <em>OrderId #: <%=sevaId%></em>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="text-center">
                            <h1>Seva Receipt</h1>
                        </div>

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Seva name</th>
                                    <th>Amount</th>
                                    <th>Date time</th>
                                    <th class="text-center"></th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-md-9"><h4><em><%=sevaname%></em></h4></td>

                                    <td class="col-md-1 text-center"><%=amount%></td>
                                    <td class="col-md-1 text-center"><%=datetime%></td>
                                    
                                </tr>
                                <tr>
                                    <td>   </td>
                                    <td>   </td>
                                    <td class="text-right">
<!--                                        <p>
                                            <strong>Subtotal: </strong>
                                        </p>
                                        <p>
                                            <strong>Tax: </strong>
                                        </p>-->
                                    </td>
                                    <td class="text-center">
<!--                                        <p>
                                            <strong><%=amount%></strong>
                                        </p>
                                        <p>
                                            <strong>0.00</strong>
                                        </p>-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name: <%=name%></td>
                                    <td>Email: <%=email%> </td>
<!--                                    <td class="text-right"><h4><strong>Total: <%=amount%></strong></h4></td>-->
                                </tr>
                                <tr>
                                    <td>(This is computer generated receipt no signature required)</td>
                                    <td>   </td>
                                    <td class="text-right"><h4><strong>Total: <%=amount%></strong></h4></td>
                                </tr>
                                <tr>
                                    
                                    <td class="text-right"><h4><strong>Amount paid</strong></h4></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="print-button">
                            <button onclick="window.print()">Print Receipt</button>
                            
                        </div>
                                <div class="print-button">
                                    <a href="userhome.jsp">Return Home</a>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
    </body>
</html>
