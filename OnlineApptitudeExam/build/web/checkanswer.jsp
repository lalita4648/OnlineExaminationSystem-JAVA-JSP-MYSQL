
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      <script>
        function func()
{
    window.location.replace('newjsp.jsp');
}
     function func1()
{
    window.location.replace('index.jsp');
}
</script>
               <script>
$(document).ready(function(){
  $("#flip").click(function(){
    $("#panel").slideToggle("slow");
  });


});
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


    </head>
    <body oncontextmenu="return false">
        <table>
            <tr>
                
                <td align="right">
                    <a onclick="func()"><img src="home.jpg" title="HOME" width="100" height="100">
                        </a>
                        </td>




                        <td width="600">
                </td>
                <td width="600"></td>
                <td align="right">
                    <a onclick="func1()"><img src="logout.png" title="LOGOUT" width="100" height="100">
                        </a>
                        </td>
            </tr>
        </table>
<br>
<br>
<br>

        <center>
        <%@page import="java.sql.*" %>
        <%
      %>
        </center>
        <br>
        <br>
        <div id="flip">Check Answer</div>
        <div>

        <%
int c=0;
        int i=1;

        String answer1=request.getParameter("1");
        String answer2=request.getParameter("2");
        String answer3=request.getParameter("3");
        String answer4=request.getParameter("4");
        String answer5=request.getParameter("5");
        String answer6=request.getParameter("6");
        String answer7=request.getParameter("7");
       String answer8=request.getParameter("8");
       String answer9=request.getParameter("9");
        String answer10=request.getParameter("10");
       String table=request.getParameter("but");
      



String answer=null;

        try
{
                   Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/onlineexam","root","pass");
      String question;
        String query14="select * from "+table+" where op1='"+answer1+"' or op2='"+answer1+"' or op3='"+answer1+"'";
       PreparedStatement pat1=con1.prepareStatement(query14);
       ResultSet st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
            out.println("<h1>Q 1"+question+"</h1>");
            if(answer1.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer1+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer1+"</font>");

                     }
             out.println("<br>");
             
             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer2+"' or op2='"+answer2+"' or op3='"+answer2+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
      out.println("<h1>Q 2"+question+"</h1>");
            if(answer2.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer2+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer2+"</font>");

                     }
             out.println("<br>");
             
             out.println("<b>correct answer</b>  :"+answer);

    }
          query14="select * from "+table+" where op1='"+answer3+"' or op2='"+answer3+"' or op3='"+answer3+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
            out.println("<h1>Q 3"+question+"</h1>");
            if(answer3.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer3+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer3+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer4+"' or op2='"+answer4+"' or op3='"+answer4+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
      out.println("<h1>Q 4"+question+"</h1>");
            if(answer4.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer4+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer4+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer5+"' or op2='"+answer5+"' or op3='"+answer5+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
        out.println("<h1>Q 5"+question+"</h1>");
            if(answer6.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer5+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer5+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer6+"' or op2='"+answer6+"' or op3='"+answer6+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
         out.println("<h1>Q 6"+question+"</h1>");
            if(answer6.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer6+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer6+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer7+"' or op2='"+answer7+"' or op3='"+answer7+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
          out.println("<h1>Q 7"+question+"</h1>");
            if(answer1.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer7+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer7+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer8+"' or op2='"+answer8+"' or op3='"+answer8+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
 out.println("<h1>Q 8"+question+"</h1>");
            if(answer8.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer8+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer8+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }                query14="select * from "+table+" where op1='"+answer9+"' or op2='"+answer9+"' or op3='"+answer9+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
          out.println("<h1>Q 9"+question+"</h1>");
            if(answer9.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer9+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer9+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>  :"+answer);

    }
                query14="select * from "+table+" where op1='"+answer10+"' or op2='"+answer10+"' or op3='"+answer10+"'";
        pat1=con1.prepareStatement(query14);
       st1=pat1.executeQuery();
while(st1.next())
{
       answer=st1.getString(5);
          question=st1.getString(1);
       out.println("<h1>Q 10"+question+"</h1>");
            if(answer10.equals(answer))
{
            out.println("<img src=right.jpg><font color=green>"+answer10+"</font>");
            c++;
            }
            else
                {
  out.println("<img src=wrong.png><font color=red>"+answer10+"</font>");

                     }
             out.println("<br>");

             out.println("<b>correct answer</b>:"+answer);

    }
   out.print("<center>");
       out.println("<h1>Result:</h1>");
       out.println("<br>");
       out.println(c+" of 10");
       out.println("<br>");

       float percentage;
       float y=c;
       percentage=(y/10);

       percentage=percentage*100;
       out.println(percentage+" %");
       out.println("<br>");

if(c>=9)
    {
    out.println("<h2>You Performed Excellent <br>Keep It Up! </h2>");
       }
       else if(c>5&&c<9)
           {
    out.println("<h2>You Performed Very Good <br>Keep It Up!</h2>");

       }
       else
           {
       out.println("<h2>You Need To Work More Hard</h2>");


       }
out.print("</center>");
           }

       
catch(Exception e)
        {
    e.getMessage();
    }
        %>
        
        </div>
    </body>

</html>
