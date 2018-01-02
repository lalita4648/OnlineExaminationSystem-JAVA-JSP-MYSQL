<%--
    Document   : admin2
    Created on : 8 Aug, 2014, 10:07:00 AM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html>
<head>
    
<style>
div.img {
    margin: 5px;
    padding: 5px;
    border: 1px solid teal;
    height: auto;
    width: auto;
    float: left;
    text-align: center;
}

div.img img {
    display: inline;
    margin: 5px;
    border: 3px solid black;
}

div.img a:hover img {
    border: 3px solid #ebebeb;
}

 #but
        {
            
            width:250px;
            border:0px;
            color:#000000;
            height: 50px;
            background:white;
 }

</style>
</head>
<body bgcolor="#000000">
   
    
    <form action="update.jsp" method="post" target="_blank">

        <table border="0"  width="100%" bgcolor="#FF0000">
            <center><th align="center"><h1><font color="#000000">Select Subject :</font></h1></th></center>
<tr>
    <td width="200">
<div class="img">
    <a><img src="c (2).png" title="C Language" width="250" height="250"></a>
 
    <div class="desc">
        <a href="update.jsp" target="_blank">`<button id="but" name="but" value="c"><i>Update C Database</i></button>
        </a>
    </div>
</div>
</td>
<td width="200"></td>
<td width="250">
<div class="img" >
 <a><img src="c++language.gif" alt="Klematis" width="250" height="250"></a>
 <div class="desc">
     <a href="update.jsp" target="_blank"><button id="but" name="but" value="c++"><i>Update C++ Database</i></button>
     </a>
 </div>
</div>
</td>
<td width="200"></td>
<td width="250">
<div class="img">
 <a><img src="java.png" alt="Klematis" width="250" height="250"></a>
 <div class="desc">
     <a href="update.jsp" target="_blank"><button id="but" name="but" value="java"><i>Update Java Database</i></button>
     </a>
 </div>
</div>
</td>
</tr>
<tr>
    <td width="250">
<div class="img">
 <a><img src="apptitude.png" alt="Klematis" width="250" height="250"></a>
 <div class="desc">
     <a href="update.jsp" target="_blank"><button id="but" name="but" value="apptitude"><i>Update APPTITUDE Database</i></button>
     </a>
 </div>
</div>
</td>
<td width="200"></td>
<td width="250">
    <div class="img">
 <a><img src="gk.jpg" alt="Klematis" width="250" height="250"></a>
 <div class="desc">
     <a href="update.jsp" target="_blank"><button id="but" name="but" value="gk"><i>Update GK Database</i></button>
     </a>
 </div>
</div>
</td>
<td width="200"></td>
<td width="250">
<div class="img">
 <a><img src="sql.gif" alt="Klematis" width="250" height="250"></a>
 <div class="desc">
     <a href="update.jsp" target="_blank"><button id="but" name="but" value="mysql"><i>Update MYSQL Database</i></button>
     </a>
 </div>
</div>
</td>
</tr>
</table>

    </form>
</body>
</html>
