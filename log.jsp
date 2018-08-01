<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
<body vlink="black">

<%-----------------------------%>


<style>
.mySlides {display:none;}
</style>

<%-----------------------------%>

<table>
    <tr><td>
<div class="slides" style="max-width:350px">
    <img class="mySlides" src="im1.png" style="width:100%" height="180px">
  <img class="mySlides" src="im4.png" style="width:100%" height="180px">
  <img class="mySlides" src="im3.png" style="width:100%" height="180px">
</div>
    </td><td> <img src="rts.png" width="175%" height="180px"/></td></tr>
     
</table>

<%-----------------------------%>


<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); 
}
</script>

<%-----------------------------%>

<table align="left" border="0" width="100" >
            <tr>
                <td><a href="home.jsp" style="text-decoration: none">Home</a></td>
            </tr>
            <tr>
                <td><a href="log.jsp" style="text-decoration: none">Login</a></td>
            </tr>
            <tr>
                <td><a href="Registration.html" style="text-decoration: none">Registration</a></td>
            </tr>
            <tr>
                <td><a href="ContactUs.html" style="text-decoration: none">Contact Us</a></td>
            </tr>
</table>

<%-----------------------------%>

<table align="center" width="800">
   <tr><td>
             <font color="Yellow" size="20">Login</font><br><br>
         <form name="linform" action="login.jsp">
                Enter Username<input name ="userid"><br>
                Enter Password<input type="password" name="pass1"><br>
                <input type="submit" value="Login"><br>
                              
         </form>
             <a href="Registration.html">Create new Account</a><br>
             <a href="ForgotPass.html">Forgot Password?</a><br>
                      
    </td></tr>
</table>

<%-----------------------------%>


<%@ page import="java.lang.Compiler.*"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
         <%  
           Driver dr=new oracle.jdbc.driver.OracleDriver();
           DriverManager.registerDriver(dr); 
           Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
           Statement st=cn.createStatement();
	   ResultSet rs;
           int eid=Integer.parseInt(request.getParameter("i1"));
           rs=st.executeQuery("select bus_no,route_name,base_fare,arrival_time,departure_time from bus_master where bus_id="+eid);
            while(rs.next())
            {
           String v1=rs.getString(1);
           String v2=rs.getString(2);
           int v3=rs.getInt(3);
           String v4=rs.getString(4);
           String v5=rs.getString(5);
           
               session.setAttribute("bn",v1);    
               session.setAttribute("br",v2);
               session.setAttribute("fr",v3);
               session.setAttribute("ar",v4);
               session.setAttribute("dp",v5);
           
            }
         %>

<%-----------------------------%>


    </body>
</html>
