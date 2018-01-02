<%--
    Document   : newjsp
    Created on : 31 Jul, 2014, 8:26:13 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <link href="js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js-image-slider.js" type="text/javascript"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script>
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });
});

        function func1()
        {
         window.location.replace('signup.jsp');
        }
        window.history.forward();
        function noBack()
        {
            window.history.forward();

        }
   </script>

<style>
#panel,#flip
{
padding:5px;
text-align:center;
background-color:#e5eecc;
border:solid 1px #c3c3c3;
}
#panel
{
padding:50px;
display:none;
}
</style>
    <style>
    th {
                font-family: 'open-sans',arial;
                color: #555;
                font-size: 18px;
                font-weight: 400;


}
    </style>
</head>
<body bgcolor="#f1f1f1" oncontextmenu="return false" onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">

    <div id="sliderFrame">
        <div id="slider">
            <img src="exam.jpg" alt="Welcome to Online Exam"  width="1000" height="400"/>
            <a class="lazyImage" href="exam4.jpg" title="Test Your Knowledge" width="1000" height="400"></a>
            <a><b data-src="exam2.jpg" width="1000" height="400"></b></a>
            <a class="lazyImage" href="exam1.jpg" title="Best Never Rest" width="1000" height="400"></a>
            <a class="lazyImage" href="exam3.jpg"  width="900" height="350"></a>
            <a class="lazyImage" href="exam6.jpg"  width="1000" height="400"></a>

        </div>
        <div style="clear:both;height:0;"></div>
    </div>
    <br>
    <br>
    <center>

    <table height="200">
        <th><div id="flip">sign in to continue</div></th>
        <tr>
    <td align="center">

        <div>

    <form action="validate.jsp" method="post">
    <br>
    <br>

    <input type=text placeholder="ID" size=30  style="border:1px;" name="id">
<br>
<br>
<input type=password name=password style="border:1px;" placeholder=PASSWORD size="30">
<br>
<br>
<input type="submit"  value="Sign in" style="display:block;
      background: #4d90fe;
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

      font-family: 'Roboto',arial,sans-serif;">
<br>
<br>
<a onclick="func1()">
<input type=button value="Sign up" style="display:block;
      background: #4d90fe;
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

      font-family: 'Roboto',arial,sans-serif;">
</a>
<br>
<br>


</td>
</tr>
</table>
    </center>
</form>
</div>
</body>

</html>
