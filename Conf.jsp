

<%-----------------------------%>

<%@ page import="java.lang.Compiler.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%-----------------------------%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Confirmation page</title>
</head>
<body bgcolor="orange">

<%-----------------------------%>


<style>
.mySlides {display:none;}
</style>

<%-----------------------------%>


<body>

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


<%
   int v1=8;
        
        Driver dr=new oracle.jdbc.driver.OracleDriver();
        DriverManager.registerDriver(dr); 
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select max(book_id) from booking_master");
			
                        while(rs.next())
                        {
                              v1=rs.getInt(1);
                        }
                        String uname=(String)session.getAttribute("uname");
                        

                rs=statement.executeQuery("select reg_id,first_name,last_name,email,contact_no from reg_master where user_name='"+uname+"'");
            while(rs.next())
            { 
           int v=Integer.parseInt(rs.getString(1));
           String v2=rs.getString(2);
           String v3=rs.getString(3);
           String v4=rs.getString(4);
           long v5=rs.getLong(5);

                  session.setAttribute("rg",v);    
                  session.setAttribute("fn",v2);    
                  session.setAttribute("ln",v3);
                  session.setAttribute("em",v4);
                  session.setAttribute("cn",v5);
                  session.setAttribute("bi",(v1+1));
            }

  int bi=(Integer)session.getAttribute("bi");
  int rg=(Integer)session.getAttribute("rg");
  String br=(String)session.getAttribute("br");
  String fn=(String)session.getAttribute("fn");    
  String ln=(String)session.getAttribute("ln");
  String doj=(String)session.getAttribute("doj");  
  int fr=(Integer)session.getAttribute("fr");
  String em=(String)session.getAttribute("em");    
  long cn=(Long)session.getAttribute("cn");
  String fp=(String)session.getAttribute("fp");    
  String tp=(String)session.getAttribute("tp");
  String bn=(String)session.getAttribute("bn");    
  String ar=(String)session.getAttribute("ar");
  String dp=(String)session.getAttribute("dp");
%>


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


      

<table style="width:90%" >
<form action="pay1.jsp">

 <td><a href="home.html">Search Bus</a> </td>
 <td><a href="edit.html">Change Password</a></td>
 <td><a href="cancel.html">Cancel Ticket</a></td>
 <td><a href="feed.html">Feedback </a></td>
<br>
<br>

<tr><td><br><font size="20" color="red"><i>Welcome!!</font></td><br></tr>
<tr><td><br><font color="blue" size="5"> Confirm your reservation </i></font><br><br></td></tr>

<tr>
    <td><font color="blue">Booking id </font>:<%  out.println(""+bi);  %></td>
    <td><font color="blue"> Registration id</font>:<%  out.println(""+rg);  %></td>
</tr>
<tr>
    <td><font color="blue">First Name </font>:<%  out.println(""+fn);  %></td>
    <td><font color="blue">Last Name</font>:<%  out.println(""+ln);  %></td>
</tr>
<tr>
    <td><font color="blue">Email </font>:<%  out.println(""+em);  %></td>
    <td><font color="blue">Contact_no</font>:<%  out.println(""+cn);  %></td>
</tr>
<tr>
    <td><font color="blue">Enter your seat choice</font><input type='text' name="sn"></td>
    <td><font color="blue">Bus Number</font>:<%  out.println(""+bn);  %></td>
</tr>
<tr>
    <td><font color="blue">From Place</font>:<%  out.println(""+fp);  %></td>
    <td><font color="blue">To Place</font>:<%  out.println(""+tp);  %></td>
</tr>
<tr>
    <td><font color="blue">Bus route</font>:<%  out.println(""+br);  %></td>
    
</tr>
<tr>
    <td><font color="blue">Date Of Journey</font>:<%  out.println(""+doj);  %></td>
    <td><font color="blue">Fare</font>:<%  out.println(""+fr);  %></td>
</tr>
<tr>
    <td><font color="blue">Arrival (at destination) </font>:<%  out.println(""+ar);  %></td>
    <td><font color="blue">Departure (from source)  </font>:<%  out.println(""+dp);  %></td>
</tr>
<br><br>
<tr><td>
        <input type="submit" value="Confirm & Pay">
    </td>
        </form>
<td><a href="home.jsp"><button>Cancel</button></a>     </td>     </tr>      
 </table>
        

<%-----------------------------%>



<% 
      String cmd = "insert into Booking_Master (book_id,reg_id,bus_route,f_name,l_name,doj,fare,email,contact_no,from_place,to_place,bus_no,arrival,departure) values("+bi+","+rg+",'"+br+"','"+fn+"','"+ln+"','"+doj+"',"+fr+",'"+em+"','"+cn+"','"+fp+"','"+tp+"','"+bn+"','"+ar+"','"+dp+"')";
      statement.executeUpdate(cmd);
%>

<%-----------------------------%>


</body>
</html>
