<%-- 
    Document   : bookingcheck
    Created on : Jul 8, 2023, 8:47:29 PM
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
    </head>
    <body>
        <%
            String roomno = request.getParameter("roomno");
            String price = request.getParameter("price");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String checkinDT = request.getParameter("checkinDT");
            stmt.executeUpdate("insert into dcurrentbookings value('" + roomno + "','" + price + "','" + name + "','" + email + "','" + mobile + "','" + checkinDT + "')");

            rst = stmt.executeQuery("select * from dcurrentbookings where roomno='" + roomno + "'");
            if (rst.next()) {

        %>
        <div class="container">
            <form action="bookingpayment.jsp" method="post">
                <div class="row">

                    <div class="col">
                        <h3 class="title">Details</h3>
                        <div class="inputBox">
                            <span>Roomno :</span>
                            <input type="text" name="roomno" value="<%=rst.getString("roomno")%>">
                        </div>
                        <div class="inputBox">
                            <span>Name :</span>
                            <input type="text" name="name" value="<%=rst.getString("name")%>" >
                        </div>
                        <div class="inputBox">
                            <span>email :</span>
                            <input type="text" name="email" value="<%=rst.getString("email")%>">
                        </div>
                        <div class="inputBox">
                            <span>price :</span>
                            <input type="text" name="price" value="<%=rst.getString("price")%>" >
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>Mobile no :</span>
                                <input type="text" name="mobile" value="<%=rst.getString("mobile")%>" >
                            </div>
                            <div class="inputBox">
                                <span>Checkin Date :</span>
                                <input type="text" name="checkinDT" value="<%=rst.getString("checkinDT")%>" >
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
                            <input type="text" pattern="[A-Za-z\s]*"  title="Please enter only characters" required="">
                        </div>
                        <div class="inputBox">
                            <span>credit card number :</span>
                            <input type="text"  pattern="[0-9]{16}" title="Please enter a valid number" placeholder="1111-2222-3333-4444" required="">
                        </div>
                        <div class="inputBox">
                            <span>exp month :</span>
                            <input type="text" pattern="[0,1-12]{1,2}" title="Please enter in digit" placeholder="01-12" required="">
                        </div>
                        <div class="flex">
                            <div class="inputBox">
                                <span>exp year :</span>
                                <input type="text"  pattern="[0-9]{4}" title="Please enter a valid year" required>
                            </div>
                            <div class="inputBox">
                                <span>CVV :</span>
                                <input type="text" pattern="[0-9]{3}" title="Please enter a valid number" placeholder="000" required="">
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

