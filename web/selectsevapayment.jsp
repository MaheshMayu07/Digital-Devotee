<%-- 
    Document   : selectsevacheck
    Created on : Jul 11, 2023, 10:29:55 PM
    Author     : likir
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connfile.jsp" %>
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
            function generateRandomNumber() {
                var randomNumber = Math.floor(1000000 + Math.random() * 9000000);
                document.getElementById("randomNumber").value = randomNumber;
            }
        </script>
    </head>
    <body onload="updateDateTime();">
        <div class="container">
            <form action="selectsevacheck.jsp" method="post">
                <%
                    String amount = request.getParameter("seva_amount");
                    String seva_name = request.getParameter("seva_name");
                    String username = (String) session.getAttribute("username");
                    rst = stmt.executeQuery("select * from signup where email='" + username + "'");
                    if (rst.next()) {
                %>
                <div class="row">
                    <div class="col">
                        <h3 class="title">Seva checkout</h3>
                        <div class="inputBox">
                            <span>full name :</span>
                            <input type="text" name="name" value="<%=rst.getString("name")%>" readonly="">
                        </div>
                        <div class="inputBox">
                            <span>email :</span>
                            <input type="email" name="email" value="<%=rst.getString("email")%>" readonly>
                        </div>
                        <div class="inputBox">
                            <span>Seva name:</span>
                            <input type="text" name="sevaname" value="<%=seva_name%>" readonly="">
                        </div>
                        <div class="inputBox">
                            <span>Amount :</span>
                            <input type="text" name="amount" value="<%=amount%>" >
                        </div>
                        <div class="inputBox">
                            <input type="hidden" name="sevaId" id="randomNumber">
                        </div>
                        <div class="inputBox">
                            <span>Date and Time</span>
                            <input type="text" id="datetime" name="datetime" readonly>
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
                            <input onclick="generateRandomNumber()" type="text" pattern="[A-Za-z]{1,} { }"  title="Please enter only characters" required>
                        </div>
                        <div class="inputBox">
                            <span>credit card number :</span>
                            <input type="number" pattern="[0-9]{16}" title="Please enter a valid number" placeholder="1111-2222-3333-4444" required">
                        </div>
                        <div class="inputBox">
                            <span>exp month :</span>
                            <input type="text" pattern="[1-12]{2}" title="Please enter in digit" placeholder="january" required="">
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>exp year :</span>
                                <input type="number" pattern="[0-9]{4}" title="Please enter a valid year" placeholder="2022" required="">
                            </div>
                            <div class="inputBox">
                                <span>CVV :</span>
                                <input type="text" placeholder="000" pattern="[0-9]{3}" title="Please enter a valid number" required="">
                            </div>
                        </div>
                    </div>
                </div>
                <input type="submit" value="Make payment" class="submit-btn">
                <%            }
                %>
            </form>
        </div>    
    </body>
</html>

