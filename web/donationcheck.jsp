<%-- 
    Document   : donationcheck
    Created on : Jul 4, 2023, 10:21:12 PM
    Author     : likir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Payment page</title>
    </head>
    <body>
        <%  
            String transactionId = request.getParameter("transactionId");
            String name = request.getParameter("name");
            String amount = request.getParameter("amount");
            String datetime = request.getParameter("datetime");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String note = request.getParameter("note");
            stmt.executeUpdate("insert into Ddonations value('" + name + "','" + amount + "','" + datetime + "','" + mobile + "','" + email + "','" + note + "','" + transactionId + "')");
            rst = stmt.executeQuery("select * from Ddonations where transactionId='"+transactionId+"'");
            if (rst.next()) {
        %>
        <div class="container">
            <form action="donationcheck1.jsp" method="post">
                <div class="row">
                    <div class="col">
                        <h3 class="title">Payment Checkout</h3>
                        <div class="inputBox">
                            <span>Name</span>
                            <input type="text" name="name" value="<%=rst.getString(1)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Email</span>
                            <input type="text" name="email" value="<%=rst.getString(5)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Mobile</span>
                            <input type="text" name="mobile" value="<%=rst.getString(4)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Amount</span>
                            <input type="text" name="amount" value="<%=rst.getString(2)%>" readonly>
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>Date and Time</span>
                                <input type="text" name="datetime" value="<%=rst.getString(3)%>" readonly>
                            </div>
                            
                            
                            <div class="inputBox">
                               
                                <input type="hidden" name="transactionId" value="<%=rst.getString(7)%>">
                            </div>
                            <div class="inputBox">
                                <span>Note</span>
                                <input type="text" name="note" value="<%=rst.getString(6)%>" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <h3 class="title">payment</h3>
                        <div class="inputBox">
                            <span>cards accepted :</span>
                            <img src="images/card_img.png" alt="">
                        </div>
                        <div class="inputBox">
                            <span>name on card :</span>
                            <input type="text" pattern="[A-Za-z]{1,} { }" required=""  title="Please enter only characters" required>
                        </div>
                        <div class="inputBox">
                            <span>credit card number :</span>
                            <input type="number" placeholder="1111-2222-3333-4444" required>
                        </div>
                        <div class="inputBox">
                            <span>exp month :</span>
                            <input type="text" placeholder="january" required>
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>exp year :</span>
                                <input type="number" placeholder="2022" required>
                            </div>
                            <div class="inputBox">
                                <span>CVV :</span>
                                <input type="text" placeholder="000" required>
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="Make payment" class="submit-btn">
            </form>
        </div>  
        <%
            }
        %>
    </body>
</html>