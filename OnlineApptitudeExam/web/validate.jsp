<%-- 
    Document   : validate
    Created on : Sep 10, 2014, 5:59:07 PM
    Author     : RAJESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                 <%@page import="java.sql.*" %>
     <%
    String id=request.getParameter("id");
    String password=request.getParameter("password");
    try
            {

           if(id.equals("admin")&&password.equals("admin!@#"))
{

response.sendRedirect("admin1.jsp");
}
else
{
 Class.forName("com.mysql.jdbc.Driver");

           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
                       PreparedStatement ps = con.prepareStatement("select * from studentdetails where userid=? and password=?");
               ps.setString(1,id);
       ps.setString(2,password);
ResultSet rs=ps.executeQuery();
if (rs.next())
{
 response.sendRedirect("newjsp.jsp");
}
else
    {
    response.sendRedirect("index.jsp");
         }  
}
           }
           catch(Exception e)
            {
        out.println("could not login");
        e.getMessage();
        }
     %>
    </body>
</html>
