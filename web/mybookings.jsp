<%-- 
    Document   : mybookings
    Created on : Jul 15, 2023, 8:14:05 AM
    Author     : likir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function mybook(){
                window.location.href="userhome.jsp";
            }            
        </script>
        <style>
            .tab{
                margin-left: 19px;
            }

            .data table tr td{
                border:2px solid red;
                padding: 10px 30px;
                border-radius:5px ;
                background-color:whitesmoke ;
                color: black;
            }
            .data h1{ 
                text-align: center;
                border: 2px solid cadetblue;
                border-bottom-left-radius: 30px;
                border-bottom-right-radius: 30px;
                background-color: #F7FFE5; 
                color:#00d7b0;
            }
            .data table tr td:hover{
                background-color: #cccccc;
                color: #0066FF;
            }
            #thead th{
                border:2px solid blueviolet;
            }
            .design{    
                border: 5px solid black;
                width: 450px;
                height: 500px;
                margin-left: 5in;              
                margin-top: 30px;
                border-radius: 20px;
                background-color: #C4D7B2;
                overflow: auto;
                resize: vertical;
            }
            
              .btn {
                  margin-left: 2in;
                  margin-top: 2in;
                background-color: black;
                border: none;
                color: white;
/*                padding: 12px 16px;*/
                font-size: 18px;
                cursor: pointer;
                border-radius: 10px;
            }

            /* Darker background on mouse-over */
            .btn:hover {
                background-color: RoyalBlue;
            }
        </style>
    </head>
    <body>
        <div class="design">
            <div class="data">
                <h1><u>My bookings</u></h1>                 
                <table class="tab">                   
                    <tr id="thead"><th>Room no</th> <th>Price</th> <th>Chechin Date n Time</th></tr>
                    <%
                        String username = (String) session.getAttribute("username");
                        rst = stmt.executeQuery("select * from currentbookings where email='" + username + "'");
                        while (rst.next()) {
                            out.println("<tr><td>" + rst.getString(1) + "</td>" + "<td>" + rst.getString(2) + "</td>" + "<td>" + rst.getString(6) + "</td></tr>");
                        }
                    %>                    
                </table>
                <button onclick="mybook();" class="btn">Back</button>
            </div>            
        </div>
    </body>
</html>
