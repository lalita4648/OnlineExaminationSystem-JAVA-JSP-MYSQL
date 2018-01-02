<%-- 
    Document   : studentdetails
    Created on : 31 Aug, 2014, 9:04:48 AM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor=red>
        <center>
                <%@page import="java.sql.*" %>
                <%
String firstname,lastname,userid,DateofBirth,gender,mobile;
                        try
{


       Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
       String query2="select * from studentdetails";
       PreparedStatement pat1=con.prepareStatement(query2);
       ResultSet st1=pat1.executeQuery();
       int y=0;
       out.print("<table border=1>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>FIRST NAME</th>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>LAST NAME</th>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>USER-ID</th>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>DATE OF BIRTH</th>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>GENDER</th>");
       out.print("<th align=center bgcolor=yellow height=30 width=150>MOBILE NUMBER</th>");

         while(st1.next())
           { 
           y++;
       
       firstname=st1.getString(1);
       lastname=st1.getString(2);
       userid=st1.getString(3);
       DateofBirth=st1.getString(5);
       gender=st1.getString(6);
       mobile=st1.getString(7);
        out.print("<tr bgcolor=white>");
        out.print("<td>");
        out.print(firstname);
        out.print("</td>");
        out.print("<td>");

        out.print(lastname);
        out.print("</td>");
        out.print("<td>");

        out.print(userid);
        out.print("</td>");
        out.print("<td>");

        out.print(DateofBirth);
        out.print("</td>");
        out.print("<td>");

        out.print(gender);
        out.print("</td>");
        out.print("<td>");

        out.print(mobile);
        out.print("</td>");

        out.print("</tr>");
    }
       out.print("</table>");
out.println("<h1><font color=yellow>TOTAL NUMBERS OF USERS ARE :</font></h1>"+"<h1>"+y+"</h1>");
   
          }
       catch(Exception e)
               {
           e.getMessage();
           }
%>
        </center>
    </body>
</html>
