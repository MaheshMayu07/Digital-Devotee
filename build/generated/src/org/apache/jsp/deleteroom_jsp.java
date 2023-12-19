package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class deleteroom_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connfile.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    String driver = "com.mysql.jdbc.Driver";
    Class.forName (driver).newInstance();
    
    Connection con=null;
    ResultSet rst=null;
    Statement stmt=null;
    
    try{
        String url="jdbc:mysql://localhost/temple?user=root&password=root";
        con=DriverManager.getConnection(url);
        stmt=con.createStatement();
    }
    catch(Exception e){
        System.out.println(e.getMessage());
    }   

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <title>Edit seva</title>\n");
      out.write("        <script>\n");
      out.write("            function logout(){\n");
      out.write("                alert(\"Logout Succesful!\");\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                background-color: #ddf2a3;\n");
      out.write("            }\n");
      out.write("            .Navimg{\n");
      out.write("                display: inline-block;\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            .templename{\n");
      out.write("                display: inline-block; \n");
      out.write("                float: left;\n");
      out.write("                margin: -18px 5px;\n");
      out.write("            }\n");
      out.write("            h4{\n");
      out.write("                text-shadow: 1px 1px 10px white ;\n");
      out.write("                letter-spacing: 0.1em;\n");
      out.write("                font-family: 'Tilt Prism', cursive; /* font-style: inherit;*/\n");
      out.write("                font-size: 28px;\n");
      out.write("                margin: 18px 10px;  \n");
      out.write("                color: #ff9900;\n");
      out.write("            }\n");
      out.write("            .Navimg img{\n");
      out.write("                height: 50px;\n");
      out.write("                width: 50px;\n");
      out.write("                display: inline-block;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                border: 2px solid white;\n");
      out.write("            }\n");
      out.write("            #sidebar{\n");
      out.write("                list-style: none;\n");
      out.write("                margin-left: -30px;\n");
      out.write("            }\n");
      out.write("            li a{\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-size: 20px;\n");
      out.write("                padding-left: 8px;\n");
      out.write("                color: black;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .optmain{\n");
      out.write("                border: 2px solid blue;\n");
      out.write("                margin-top: -15px;\n");
      out.write("                margin-left: -9px;\n");
      out.write("                border-radius: 16px;\n");
      out.write("                background-color: #00d7b0;\n");
      out.write("                box-shadow: 4px 4px 4px;\n");
      out.write("            }\n");
      out.write("            .sidebar{\n");
      out.write("                display: inline-block;\n");
      out.write("                height: 653px;\n");
      out.write("                margin: -7px;\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("                box-shadow: 4px 4px 12px ;\n");
      out.write("            }\n");
      out.write("            .subopt{\n");
      out.write("                margin-left: -10px;\n");
      out.write("                padding-left: 14px;\n");
      out.write("            }\n");
      out.write("            svg{\n");
      out.write("                margin-top: 10px;\n");
      out.write("            }\n");
      out.write("            .subopt li:hover{                \n");
      out.write("                background-color: #b188cc;\n");
      out.write("                border-right: 5px solid blueviolet;\n");
      out.write("                padding-right: 3px;              \n");
      out.write("            }\n");
      out.write("            .dash{\n");
      out.write("                background-color: #cccccc;\n");
      out.write("                border-right: 5px solid blueviolet;\n");
      out.write("                padding-right: 3px;\n");
      out.write("            }\n");
      out.write("            #opt{\n");
      out.write("                border-bottom-left-radius: 10px;\n");
      out.write("                border-top-left-radius: 10px;\n");
      out.write("                padding-top: 10px;\n");
      out.write("            }\n");
      out.write("            #arr{               \n");
      out.write("                padding-top: 7px;\n");
      out.write("                float: right;\n");
      out.write("            } \n");
      out.write("            .head{               \n");
      out.write("                /*                border:2px solid black;*/\n");
      out.write("                margin-left: 335px;\n");
      out.write("                margin-top: -645px;\n");
      out.write("                background-color: #C4D7B2;\n");
      out.write("                padding-left: 15px;\n");
      out.write("                width:10.43in;\n");
      out.write("                box-shadow: 4px 4px 4px ;\n");
      out.write("            }\n");
      out.write("            h3{\n");
      out.write("                margin-left:50px;\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            .delseva {\n");
      out.write("                background-color: #C4D7B2;\n");
      out.write("                border: 2px solid black;\n");
      out.write("                width: 700px;\n");
      out.write("                height: 195px;\n");
      out.write("                margin-left: 5in;\n");
      out.write("                margin-top: 30px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .delseva h2 {\n");
      out.write("                border-bottom-left-radius: 30px;\n");
      out.write("                border-bottom-right-radius: 30px;\n");
      out.write("                text-align: center;\n");
      out.write("                border: 2px solid cadetblue;               \n");
      out.write("                background-color: #F7FFE5; \n");
      out.write("                color:#00d7b0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #opt {\n");
      out.write("                margin-left: 7px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .group {\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .group label {\n");
      out.write("                font-size: 20px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("                display: block;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .group input[type=\"text\"] {\n");
      out.write("                margin-left: 10px;\n");
      out.write("                width: 95%;\n");
      out.write("                padding: 8px;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("            }\n");
      out.write("            .group input[type=\"text\"]:hover{\n");
      out.write("                background-color:#efe9d8;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .group input[type=\"submit\"] {\n");
      out.write("                background-color: rgb(29, 122, 197);\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                margin-left: 3in;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .group input[type=\"submit\"]:hover {\n");
      out.write("                background-color: firebrick;\n");
      out.write("                box-shadow: 4px 4px 4px black;\n");
      out.write("                border-bottom-right-radius: 6px;\n");
      out.write("                border-bottom-left-radius: 6px;\n");
      out.write("            }\n");
      out.write("            #sel{\n");
      out.write("                margin-left: 10px;\n");
      out.write("                width: 95%;\n");
      out.write("                padding: 8px;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("            }\n");
      out.write("            select:hover{\n");
      out.write("                background-color:#efe9d8;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"sidebar\">\n");
      out.write("            <ul id=\"sidebar\">\n");
      out.write("                <div class=\"optmain\">\n");
      out.write("                    <li id=\"opt\" >\n");
      out.write("                        <div class=\"Navimg\">\n");
      out.write("                            <img src=\"images/gopura.jpg\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"templename\">\n");
      out.write("                            <h4><u>Digital Devotee</u></h4>\n");
      out.write("                        </div>\n");
      out.write("                    </li><br/><br/><br/>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"subopt\">\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 576 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z\"/></svg>\n");
      out.write("                        <a id=\"da\" href=\"adminhome.jsp\">Dashboard</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 640 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M96 0C43 0 0 43 0 96V416c0 53 43 96 96 96H544c53 0 96-43 96-96V96c0-53-43-96-96-96H96zM64 96c0-17.7 14.3-32 32-32H544c17.7 0 32 14.3 32 32V416c0 17.7-14.3 32-32 32H96c-17.7 0-32-14.3-32-32V96zm159.8 80a48 48 0 1 0 -96 0 48 48 0 1 0 96 0zM96 309.3c0 14.7 11.9 26.7 26.7 26.7h56.1c8-34.1 32.8-61.7 65.2-73.6c-7.5-4.1-16.2-6.4-25.3-6.4H149.3C119.9 256 96 279.9 96 309.3zM461.2 336h56.1c14.7 0 26.7-11.9 26.7-26.7c0-29.5-23.9-53.3-53.3-53.3H421.3c-9.2 0-17.8 2.3-25.3 6.4c32.4 11.9 57.2 39.5 65.2 73.6zM372 289c-3.9-.7-7.9-1-12-1H280c-4.1 0-8.1 .3-12 1c-26 4.4-47.3 22.7-55.9 47c-2.7 7.5-4.1 15.6-4.1 24c0 13.3 10.7 24 24 24H408c13.3 0 24-10.7 24-24c0-8.4-1.4-16.5-4.1-24c-8.6-24.3-29.9-42.6-55.9-47zM512 176a48 48 0 1 0 -96 0 48 48 0 1 0 96 0zM320 256a64 64 0 1 0 0-128 64 64 0 1 0 0 128z\"/></svg>                        \n");
      out.write("                        <a id=\"lis\" href=\"activeusers.jsp\">Devotees</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("\n");
      out.write("                    <li id=\"opt\" class=\"dash\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 448 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M304 128a80 80 0 1 0 -160 0 80 80 0 1 0 160 0zM96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM49.3 464H398.7c-8.9-63.3-63.3-112-129-112H178.3c-65.7 0-120.1 48.7-129 112zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3z\"/></svg>\n");
      out.write("                        <a href=\"sevas.jsp\">Seva</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 576 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M312 24V34.5c6.4 1.2 12.6 2.7 18.2 4.2c12.8 3.4 20.4 16.6 17 29.4s-16.6 20.4-29.4 17c-10.9-2.9-21.1-4.9-30.2-5c-7.3-.1-14.7 1.7-19.4 4.4c-2.1 1.3-3.1 2.4-3.5 3c-.3 .5-.7 1.2-.7 2.8c0 .3 0 .5 0 .6c.2 .2 .9 1.2 3.3 2.6c5.8 3.5 14.4 6.2 27.4 10.1l.9 .3 0 0c11.1 3.3 25.9 7.8 37.9 15.3c13.7 8.6 26.1 22.9 26.4 44.9c.3 22.5-11.4 38.9-26.7 48.5c-6.7 4.1-13.9 7-21.3 8.8V232c0 13.3-10.7 24-24 24s-24-10.7-24-24V220.6c-9.5-2.3-18.2-5.3-25.6-7.8c-2.1-.7-4.1-1.4-6-2c-12.6-4.2-19.4-17.8-15.2-30.4s17.8-19.4 30.4-15.2c2.6 .9 5 1.7 7.3 2.5c13.6 4.6 23.4 7.9 33.9 8.3c8 .3 15.1-1.6 19.2-4.1c1.9-1.2 2.8-2.2 3.2-2.9c.4-.6 .9-1.8 .8-4.1l0-.2c0-1 0-2.1-4-4.6c-5.7-3.6-14.3-6.4-27.1-10.3l-1.9-.6c-10.8-3.2-25-7.5-36.4-14.4c-13.5-8.1-26.5-22-26.6-44.1c-.1-22.9 12.9-38.6 27.7-47.4c6.4-3.8 13.3-6.4 20.2-8.2V24c0-13.3 10.7-24 24-24s24 10.7 24 24zM568.2 336.3c13.1 17.8 9.3 42.8-8.5 55.9L433.1 485.5c-23.4 17.2-51.6 26.5-80.7 26.5H192 32c-17.7 0-32-14.3-32-32V416c0-17.7 14.3-32 32-32H68.8l44.9-36c22.7-18.2 50.9-28 80-28H272h16 64c17.7 0 32 14.3 32 32s-14.3 32-32 32H288 272c-8.8 0-16 7.2-16 16s7.2 16 16 16H392.6l119.7-88.2c17.8-13.1 42.8-9.3 55.9 8.5zM193.6 384l0 0-.9 0c.3 0 .6 0 .9 0z\"/></svg>\n");
      out.write("                        <a href=\"donations.jsp\">Donations</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 384 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M48 0C21.5 0 0 21.5 0 48V464c0 26.5 21.5 48 48 48h96V432c0-26.5 21.5-48 48-48s48 21.5 48 48v80h96c26.5 0 48-21.5 48-48V48c0-26.5-21.5-48-48-48H48zM64 240c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V240zm112-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V240c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V240zM80 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H80c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16zm80 16c0-8.8 7.2-16 16-16h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H176c-8.8 0-16-7.2-16-16V112zM272 96h32c8.8 0 16 7.2 16 16v32c0 8.8-7.2 16-16 16H272c-8.8 0-16-7.2-16-16V112c0-8.8 7.2-16 16-16z\"/></svg>                        \n");
      out.write("                        <a href=\"addroom.jsp\">Manage Rooms</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 640 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3zM625 177L497 305c-9.4 9.4-24.6 9.4-33.9 0l-64-64c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l47 47L591 143c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9z\"/></svg>\n");
      out.write("                        <a href=\"vpasslist.jsp\">Volunteers</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 512 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M362.7 19.3L314.3 67.7 444.3 197.7l48.4-48.4c25-25 25-65.5 0-90.5L453.3 19.3c-25-25-65.5-25-90.5 0zm-71 71L58.6 323.5c-10.4 10.4-18 23.3-22.2 37.4L1 481.2C-1.5 489.7 .8 498.8 7 505s15.3 8.5 23.7 6.1l120.3-35.4c14.1-4.2 27-11.8 37.4-22.2L421.7 220.3 291.7 90.3z\"/></svg>                        \n");
      out.write("                        <a href=\"admincomplaintcheck.jsp\">Complaints</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li>\n");
      out.write("                    <li id=\"opt\">\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" height=\"1.5em\" viewBox=\"0 0 512 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d=\"M288 32c0-17.7-14.3-32-32-32s-32 14.3-32 32V256c0 17.7 14.3 32 32 32s32-14.3 32-32V32zM143.5 120.6c13.6-11.3 15.4-31.5 4.1-45.1s-31.5-15.4-45.1-4.1C49.7 115.4 16 181.8 16 256c0 132.5 107.5 240 240 240s240-107.5 240-240c0-74.2-33.8-140.6-86.6-184.6c-13.6-11.3-33.8-9.4-45.1 4.1s-9.4 33.8 4.1 45.1c38.9 32.3 63.5 81 63.5 135.4c0 97.2-78.8 176-176 176s-176-78.8-176-176c0-54.4 24.7-103.1 63.5-135.4z\"/></svg>\n");
      out.write("                        <a href=\"adminlogin.jsp\" onclick=\"logout();\">Logout</a>\n");
      out.write("                        <svg id=\"arr\" xmlns=\"http://www.w3.org/2000/svg\" height=\"1.25em\" viewBox=\"0 0 320 512\"><!--! Font Awesome Free 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><style>svg{fill:#000000}</style><path d=\"M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z\"/></svg>\n");
      out.write("                    </li><br/><br/><br/>\n");
      out.write("                </div>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"head\">\n");
      out.write("            <table>\n");
      out.write("                <tr><td><h3>Delete Room</h3></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"delseva\">\n");
      out.write("            <h2><u>Delete Room</u></h2>\n");
      out.write("            <form action=\"deletroomcheck.jsp\" method=\"post\">\n");
      out.write("                <div class=\"group\">\n");
      out.write("                    <label for=\"roomno\">Select the room number to be deleted:</label>\n");
      out.write("                    <select name=\"roomno\" id=\"sel\">\n");
      out.write("                        ");

                            rst = stmt.executeQuery("select roomno from roomdetails");
                            while (rst.next()) {
                        
      out.write("\n");
      out.write("                        <option>\n");
      out.write("                            ");
      out.print(rst.getString(1));
      out.write("\n");
      out.write("                        </option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"group\">\n");
      out.write("                    <input type=\"submit\" value=\"Delete\">\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
