<%-- 
    Document   : donationcheck1
    Created on : Jul 11, 2023, 2:38:42 PM
    Author     : likir
--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Login Page</title>
        <script>
            function UserAlert()
            {
                alert("Payment Successsful Thankyou for donating");
                
            }
        </script>
        <script>
            // Get the current date
            var currentDate = new Date();

            // Format the date as desired
            var options = { year: 'numeric', month: 'long', day: 'numeric' };
            var formattedDate = currentDate.toLocaleDateString('en-US', options);

            // Display the formatted date in the HTML element
            document.getElementById("date").textContent = formattedDate;
        </script>
        <style>
            

        </style>
    </head>
    <body>
    <center>
        <%@ include file="connfile.jsp" %>
        <%
            String transactionId = request.getParameter("transactionId");
            String name = request.getParameter("name");
            String amount = request.getParameter("amount");
            String datetime = request.getParameter("datetime");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String note = request.getParameter("note");
            stmt.executeUpdate("insert into donations value('" + name + "','" + amount + "','" + datetime + "','" + mobile + "','" + email + "','" + note + "')");
            out.println("<script>UserAlert();</script>");
        %>
        <div class="container">
            <%

                rst = stmt.executeQuery("select * from ddonations where transactionId='" + transactionId + "'");
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
                                <em>transactionId : <%=transactionId%></em>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="text-center">
                            <h1><u>Donation Receipt</u></h1>
                        </div>

                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Amount donated</th>
                                    <th>Email</th>
                                    <th>Date_time</th>
                                    <th>Mobile</th>                                     


                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="col-md-9"><h4><em><%=name%></em></h4></td>

                                    <td class="col-md-1 text-center"><%=amount%></td>
                                    <td class="col-md-1 text-center"><%=email%></td>
                                    <td class="col-md-1 text-center"><%=datetime%></td>
                                    <td class="col-md-1 text-center"><%=mobile%></td>

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
    </center>
</body>
</html>

