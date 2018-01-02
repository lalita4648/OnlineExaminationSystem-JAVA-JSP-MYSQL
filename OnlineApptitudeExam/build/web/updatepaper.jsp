<%-- 
    Document   : updatepaper
    Created on : 13 Aug, 2014, 8:54:47 AM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function func1()
            {
                window.location.replace('update.jsp');
            }
        </script>
        <style>
            #button1{
            display:block;
      background:#F08080;
      color: white;
      width: 165px;
      z-index: 1;
      white-space: nowrap;
      display: inline-block;
      vertical-align: middle;
      padding-left: 35px;
      padding-right: 35px;
      font-size: 14px;
      font-weight: bold;
      width: 300px;
      height: 35px;
      border-right: #bb3f30 1px solid;

      font-family: 'Roboto',arial,sans-serif;
            }
            </style>
    </head>
    <body>
        <form action="update.jsp" method="post">
<%@page import="java.sql.*"%>
<%
String g=request.getParameter("but");

String question=request.getParameter("question");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String answer=request.getParameter("answer");
try
           {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
    PreparedStatement ps = con.prepareStatement("insert into "+g+" values (?,?,?,?,?)");
    ps.setString(1,question); ps.setString(2,op1); ps.setString(3,op2);
    ps.setString(4,op3);ps.setString(5,answer);
    ps.executeUpdate();
    out.println("<body bgcolor=brown><br><br><br><br><br><center><h1>Question Updated Sucessfully</h1></center></body>");
    out.println("<br><br><br><center><a href=update.jsp><button  value="+g+" name=but id=button1 onclick=func1()>Add More Questions</button></a></center>");
    out.println();
    }

catch(Exception e)
    {
    out.println("<h1>error in login please provide full information</h1>");
    }

%>

        </form>
    </body>
</html>
