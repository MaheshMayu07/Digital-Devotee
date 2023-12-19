<%-- 
    Document   : prasadampayment
    Created on : Jul 11, 2023, 5:20:59 PM
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
        <script>
                function updateDateTime() {
                    var datetimeInput = document.getElementById('datetime');
                    var currentDate = new Date();
                    datetimeInput.value = currentDate.toLocaleString();
                }
          
                // Update the date and time initially
                updateDateTime();
          
                // Update the date and time every second
                setInterval(updateDateTime, 1000);
            </script>
    </head>
    <body onload="updateDateTime();">
        <%  
            String orderId = request.getParameter("orderId");
            rst = stmt.executeQuery("select * from dprasadam where orderId='"+orderId+"'");
            if (rst.next()) {
        %>
        <div class="container">
            <form action="prasadampaymentcheck.jsp" method="post">
                <div class="row">
                    <div class="col">
                        <h3 class="title">Payment Checkout</h3>
                        <div class="inputBox">
                            <span>Name</span>
                            <input type="text" name="name" value="<%=rst.getString(1)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Email</span>
                            <input type="text" name="email" value="<%=rst.getString(2)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Prasadam name</span>
                            <input type="text" name="prasadam-name" value="<%=rst.getString(3)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Quantity</span>
                            <input type="text" name="quantity" value="<%=rst.getString(5)%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Amount</span>
                            <input type="text" name="amount" value="<%=rst.getString(6)%>" readonly>
                        </div>
                        
                        
                        <div class="inputBox">
                            <span>Amount</span>
                            <input type="hidden" name="orderId" value="<%=rst.getString(7)%>">
                        </div>
                              
                        <div class="flex">
                            <div class="inputBox">
                                <span>Date and Time</span>
                                <input type="text" id="datetime" name="datetime" readonly>
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
                            <input type="text" pattern="[A-Za-z]{1,} { }"   title="Please enter only characters"  required>
                        </div>
                        <div class="inputBox">
                            <span>credit card number :</span>
                            <input type="number" pattern="[0-9]{16}" title="Please enter a valid number" placeholder="1111-2222-3333-4444" required>
                        </div>
                        <div class="inputBox">
                            <span>exp month :</span>
                            <input type="text" pattern="[1-12]{2}" title="Please enter in digit" placeholder="january" required>
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>exp year :</span>
                                <input type="number" pattern="[0-9]{4}" title="Please enter a valid year" placeholder="2022" required>
                            </div>
                            <div class="inputBox">
                                <span>CVV :</span>
                                <input type="number" pattern="[0-9]{3}" title="Please enter a valid number" placeholder="000" required>
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