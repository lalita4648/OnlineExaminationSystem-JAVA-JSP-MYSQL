<%-- 
    Document   : admin1
    Created on : 7 Aug, 2014, 12:19:58 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <script>
function bigImg(x)
{
x.style.height="250px";
x.style.width="250px";
}
function bigImg1(x)
{
x.style.height="250px";
x.style.width="300px";
}

function normalImg(x)
{
x.style.height="200px";
x.style.width="200px";
}
function normalImg1(x)
{
x.style.height="200px";
x.style.width="300px";
}
function func2()
{
    window.location.assign('studentdetails.jsp');
}
function func1()
{
    window.location.assign('admin2.jsp');
}


</script>
<style>
div.desc {
  text-align: center;
  font-weight: normal;
  width: 120px;
  margin: 5px;
}
</style>

    </head>
<body  bgcolor=#DCDCDC>
<center>
<table>
<tr>
<td width=100 height=100 align=center>
    <a onclick="func1()"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" border="0" src="database.jpg" alt="Smiley" width="200px" height="200px"></a>
<div class="desc">Update Questions</div>
</td>
<td width=100 height=100>
</td>
<td width=100 height=100 align=center>
    <a onclick="func2()"><img onmouseover="bigImg1(this)" onmouseout="normalImg1(this)" border="0" src="students.jpg" alt="Smiley" width="300px" height="200px"></a>
<div class="desc">Student Details</div>
</div>
</td>
</tr>
</table>
</center>

</body>
</html>