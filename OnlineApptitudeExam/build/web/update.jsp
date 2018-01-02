<%-- 
    Document   : update
    Created on : 13 Aug, 2014, 8:47:19 AM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>

#img2 {
    width:100%;
    height:200px;

}
#popUpYes
{
background-color:white;
}
#popUpYes:hover
{
background-color:#E65B77;
}
</style>
</head>
<body bgcolor=#f1f1f1>

    <form action="updatepaper.jsp" method="post">

    <%
    String g=request.getParameter("but");
    String h=g;
    %>

<table>
<tr  bgcolor=#E65B77>
<td>
<h2>Question</h2>
</td>
<td>
<textarea rows=2 cols=45 name="question"></textarea>
</td>
</tr>
<tr bgcolor=#EA728A>
<td>
<h4>Option 1</h4>
</td>
<td>
<input type=text size=50 name="op1">
</td>
</tr>
<tr bgcolor=#EE8A9E>
<td>
<h4>Option 2</h4>
</td>
<td>
<input type=text size=50 name="op2">
</td>
</tr>
<tr bgcolor=#F1A1B1>
<td>
<h4>Option 3</h4>
</td>
<td>
    <input type=text size=50 name="op3">
</td>
</tr>

<tr bgcolor=#F4B8C4>
<td>
<h4>Answer</h4>
</td>
<td>
    <input type=text size=50 name="answer">
</td>
</tr>

<tr>
<td align=right width=100%>
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button id="popUpYes" name="but" value="<% out.print(h); %>" style="display:block;


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

      font-family: 'Roboto',arial,sans-serif;">Update</button>

</td>
</tr>
</table>
    </form>
    </body>
</html>