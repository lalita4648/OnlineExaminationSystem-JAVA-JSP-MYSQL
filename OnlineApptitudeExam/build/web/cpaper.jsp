<%--
    Document   : questionpaper
    Created on : 13 Aug, 2014, 10:58:43 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title id="ttl">JSP Page</title>
        <script>
            window.history.forward();
        function noBack()
        {
            window.history.forward();

        }
           function func()
            {
                window.location.replace('checkanswer.jsp');
            }
          var parselimit = 300;
function submitForm() {
document.forms[0].submit();
}

function begintimer(){
if (!document.images){return}
if (parselimit==1){
submitForm();
}
else {
parselimit --;
curhr=Math.floor(parselimit/3600);
curmin=Math.floor(parselimit/60);
curmin=curmin-(curhr*60);
cursec=parselimit%60;
if (curhr!=0) {
curtime=curhr+" hr: "+curmin+" min: "+cursec+" sec";
}
else if (curmin!=0) {
curtime=curmin+" min: "+cursec+" sec";
}
else {
curtime=cursec+" seconds left" ;
}
window.status=curtime;

tim = setTimeout("begintimer()",1000);
//$scope.header="<b style='font-size:14;color:red;'>"+curtime+"</b>"
    document.getElementById("ttl").innerHTML=curtime;

}
}
        </script>
        <style>
            ul {
                border: 1px;
                color: teal;
            }
                qq {

            }

        </style>
    </head>
    <body onload = "begintimer()" bgcolor="teal">
        <%@page import="java.sql.*" %>
<form action=checkanswer.jsp method=post>
        <table border="1" width="100%" height="300" bordercolor="red">
            <tr><td>
                    <table border="2" width="100%" height="300" bordercolor="green" bgcolor="#f1f1f1">
                        <tr><td>

        <%
 //
        String g=request.getParameter("but");
       
   //     String op1=null;
   //     String op2=null;
    //    String op3=null;
String question = null;
String op1 = null,op2 = null,op3 = null;
String answer;
        try
{
              Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
        String query="SELECT * FROM "+g+" order by rand() limit 10";
        PreparedStatement pstmt=con.prepareStatement(query);
    ResultSet rs=pstmt.executeQuery();

int i=1;

while(rs.next())
{
    question=rs.getString(1);
    op1=rs.getString(2);
    op2=rs.getString(3);
    op3=rs.getString(4);

   if(i!=11)
     {
       out.println("<h1><font color=red>Q"+i+":</font><font color=green>"+question+"</font></h1>");
         out.print("<input type=radio value='"+op1+"' name="+i+">");
               out.print(rs.getString(2));
              out.print("<br>");
                out.print("<input type=radio value='"+op2+"' name="+i+">");
                out.print(rs.getString(3));
                out.print("<br>");
                out.print("<input type=radio value='"+op3+"' name="+i+">");
                out.print(rs.getString(4));
       out.print("<ul id=u>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</ul>");
                out.print("<br>");

   }
    i++;
}
}


        catch(Exception e)
        {
        out.println(e.getMessage());
        }

%>
<input type="hidden" value="<% out.println(g);%>" name="but">
<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button value="<%out.print(g);%>" style="width: 180px;height: 50px; font-size:150%"onclick="func()" name="but">SUBMIT</button>
        
                            </td></tr></table>     </td></tr></table>
    </form>
    </body>

</html>
