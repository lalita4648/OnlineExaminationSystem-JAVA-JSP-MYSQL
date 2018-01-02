<%-- 
    Document   : signup
    Created on : 3 Aug, 2014, 8:38:00 PM
    Author     : Compaq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
 <head>
           <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
     <script>
         function validateform()
         {
          var x=document.forms["myform"]["first"].value;
        

                if(x==""||x==null)
                    {
                        alert("please enter name");
                        return false;
                    }
          var x1=document.forms["myform"]["last"].value;
        
        if(x1==""||x1==null)
                 {
                     alert("Please Enter Last Name");
                        return false;
                }
               var x2=document.forms["myform"]["id"].value;

             if(x2==""||x2==null)
                 {
                     alert("Please Enter Unique-ID");
                     return false;
                 }
                   var x3=document.forms["myform"]["password"].value;
        
                 if(x3==""||x3==null)
                 {
                     alert("Please Enter Password");
                     return false;
                 }
                  var x4=document.forms["myform"]["rpassword"].value;
        
                if(x4==""||x4==null)
                 {
                     alert("Please Re-Enter Password");
                    return false;
                 }
                 if(x3!=x4)
                 {
                     alert("Password Incorrect");
                    return false;
                 }
                  var x5=document.forms["myform"]["Month"].value;

                if(x5=="Month")
                 {
                     alert("Please Select Month");
                    return false;
                 }
                          var x6=document.forms["myform"]["date"].value;
 
                 if(x6==""||x6==null)
                 {
                     alert("Please Enter Date Of Birthdate");
                     return false;
                     
                 }
                   if(isNaN(x6))
                     {
                         alert("Date Must Be Number");
                           return false;
                     }
                      if(x6>31)
                     {
                         alert("please Enter valid Date");
                          return false;
                     }
                             var x7=document.forms["myform"]["year"].value;


                   if(x7==""||x7==null)
                 {
                     alert("Please Enter Year Of Birthdate");
                    return false;
                 }
                 if(x7<=1960||x7>2014)
                     {
                     alert("Please Enter valid Year Of Birthdate");
                    return false;

                     }
                  
          if((myform.gender[0].checked==false&&myform.gender[1].checked==false))

{
alert ( "Please choose your Gender: Male or Female" );
return false;
}

                       var x9=document.forms["myform"]["mobile"].value;
                 
              if(x9==""||x9==null)
                 {
                     alert("Please Enter Mobile Number");
                    return false;
                 }
                 var mob=/^[1-9]{1}[0-9]{9}$/;
                 if(mob.test(x9)==false)
                     {
                         alert("Please Enter Valid Mobil Number");
                         return false;
                     }
                
                      
                     }
         
         </script>
           <script>
               function func()
               {
                   window.location.replace('accountcreated.jsp');
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

    <style>
    th {
                font-family: 'open-sans',arial;
                color: #555;
                font-size: 18px;
                font-weight: 400;


}
  
         
b{
font-size:18px;
font-weight:normal;
color:#555;
}
strong{
display:inline-block;
height:16px;
}
h2{
    font:italic bold 12px/30px Georgia,serif;
}
</style>
</head>
<body bgcolor=#f1f1f1>
    <form name="myform" action="accountcreated.jsp" method="post" onsubmit="return validateform()">

                <center>
                    <table width="70%">
<th><div id="flip">Create Your Account</div></th>
                        <tr>
                            <td>
                                <div>
                    <table>

<tr>
    <td align="left">

    <br>

    <strong>Name:</strong>
<br>
<br>

<input type="text" placeholder=First name="first">
<input type="text" placeholder=Last name="last">
</td>
</tr>
<tr>
    <td align="left">
<br>
<strong>Choose Your User-ID</strong>
<br>
<br>
<input type="text" placeholder=Unique-id name="id">
</td>
</tr>
<tr>
    <td align="left">
<br>
<strong>Create a Password</strong>
<br>
<br>
<input type="password" name="password">
</td>
</tr>
<tr>
    <td align="left">
<br>
<strong>Confirm Your Password</strong>
<br>
<br>
<input type="password" name="rpassword">
</td>
</tr>
<tr>
    <td align="left">
<br>
<strong>BirthDate</strong>
<br>
<br>
<select name="Month">
    <option value="mon">Month</option>

    <option value="January">January</option>
    <option value="February">February</option>
    <option value="March">March</option>
    <option value="April">April</option>
    <option value="May">May</option>
    <option value="June">June</option>
    <option value="July">July</option>
    <option value="August">August</option>
    <option value="September">September</option>
    <option value="October">October</option>
    <option value="November">November</option>
    <option value="December">December</option>
 </select>
<input type=text size=10 placeholder=Date name="date">
<input type=text size=10 placeholder=Year name="year">
<tr>
    <td align="left">
<br>
<strong>Gender</strong>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio"
name="gender" value="Male"> Male
<input type="radio" name="gender"
value="Female"> Female

</td>
</tr>
<tr>
    <td align="left">
<strong>Mobile Phone</strong>
<br>
<br>
<label>+91</label>
<input type="text" placeholder="Mobile no." name="mobile">
</tr>
</td>
    <tr>
        <td align="center">
<br>
    <br>
    <br>

            <input type=submit value="Sign up" style="display:block;
      background:#F08080;
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

</td>
</tr>
</table>
                                </div>
                            </td>
                        </tr>
                    </table>
</center>
</form>
</body>
</html>