<%-- 
    Document   : accountcreated
    Created on : 7 Aug, 2014, 1:09:45 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>
a
{
    text-decoration:none;
}
    h3 {
                font-family: 'open-sans',arial;
                color: #555;
                font-size: 18px;
                font-weight: 400;


}
#popUpYes
{
    width: 120px;
    height: 50px;
    background-color:white;
}
#popUpYes:hover
{
    background-color:#CCFFCC;
}
    </style>

</head>
<body bgcolor=#CCFFCC>
    <%@page import="java.sql.*"%>
    <%
    String firstname=request.getParameter("first");
    
    String lastname=request.getParameter("last");
    String userid=request.getParameter("id");
    String password=request.getParameter("password");
    String month=request.getParameter("Month");
    String date=request.getParameter("date");
    String year=request.getParameter("year");
    String gender=request.getParameter("gender");
    String mobile=request.getParameter("mobile");
    String slash="/";
    String dob=month.concat(slash);
    dob=dob.concat(date);
    dob=dob.concat(slash);
    dob=dob.concat(year);
    
    try
           {


          Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
    PreparedStatement ps = con.prepareStatement("insert into studentdetails values (?,?,?,?,?,?,?)");
    ps.setString(1,firstname);
    ps.setString(2,lastname);
    ps.setString(3,userid);
    ps.setString(4,password);
    ps.setString(5,dob);
    ps.setString(6,gender);
    ps.setString(7,mobile);
    ps.executeUpdate();
out.print("<center>");
out.print("<table>");
out.print("<tr>");
out.print("<td>");
out.print("<img src=accountcreated.jpg width=300 height=200>");
out.print("</td>");
out.print("</tr>");
out.print("<tr>");
out.print("<td>");
out.print("<br>");
out.print("<br>");
out.print("<h3>Your Account Has Been Created</h3>");
out.print("</td>");
out.print("</tr>");
out.print("</table>");
out.print("<br>");
out.print("<br>");
out.print("<br>");
out.print("<br>");
out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
out.print("&nbsp;&nbsp;");
out.print("<a href=index.jsp><input type=button value=Proceed To Sign In  id=popUpYes ></a>");
out.print("</center>");

    }

  catch(Exception e)
            {
e.getMessage();
       }
 
    %>

</body>
</html>