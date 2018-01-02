<%-- 
    Document   : newjsp1
    Created on : 1 Aug, 2014, 10:07:48 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Instructions</title>
<style>
h2
{
color:#5EAC1A;
}
b
{
color:#808080;
}
#ins
{
color:#DC143C;
}
#popUpYes
{
    width: 180px;
    height: 50px;
    background-color:white;
}
#popUpYes:hover
{
    background-color:#DB7093;
}
</style>
</head>
<body bgcolor="#DC143C">
     <form action="cpaper.jsp" method="post">
       
    <%
String g=request.getParameter("but");
%>
<br>

    <table bordercolor="#c86260" bgcolor="#ffffcc"
cellspacing="5" cellpadding="3" width=100%>
<tr><td align=center>
        <b>Online Test::</b> <h2>Online <% if(g.equals("cc")){out.print("C++");}else{out.print(g.toUpperCase());}%> Language Test<h2>
</td>
</tr>
<tr>
<td align=center>
<img src="examlogo.jpg" width=500 height=200>
</td>

</tr>
<tr><td></td></tr>
<tr><td></td></tr>

<tr>
<td>
<table border="0" bordercolor="green"
bgcolor="#ffffcc"  cellspacing="5" cellpadding="3"
width=100%>
<tr>
<td>
<h2 id=ins>INSTRUCTIONS:</h2>
<br>
<ol>
<li>
<font color=green size=5>Total number of questions</font> :
<b>10</b>
</li>
<br>
<li>
<font color=green size=5>Time alloted</font> : <b>5
minutes</b></li>
<br>
<li>
<font color=green size=5>Do not Referesh the page</font> :
</li>

<br>
<li>
<font color=green size=5>Each question carry 1 marks, no
negative marks</font>
</li></ol>
</td>
</tr>

</table>
    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
<a href="cpaper.jsp" style="text-decoration: none;"><button id="popUpYes" name="but" value="<% out.println(g);%>" onclick="func()">Start Test.........</button>
</a>
</td>
</tr>

</table>
</form>

</body></html>