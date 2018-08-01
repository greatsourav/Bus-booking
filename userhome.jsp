
<html>
    <head>
        <title>Bus Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body vlink="black" bgcolor="orange">
       <style>
.mySlides {display:none;}
</style>
<table>
    <tr><td>
<div class="slides" style="max-width:350px">
    <img class="mySlides" src="im1.png" style="width:100%" height="180px">
  <img class="mySlides" src="im4.png" style="width:100%" height="180px">
  <img class="mySlides" src="im3.png" style="width:100%" height="180px">
</div>
    </td><td> <img src="rts.png" width="175%" height="180px"/></td></tr>
     
</table>
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
  
        <table align="center" width="800">
            <tr><td>
                    <font color="orange" size="20">Welcome to Royal travels</font><br><br>
                    <a href="home.jsp">Search Bus</a>|<a href="ChangePass.html">Change Password</a>|
                    <a href="home.jsp">Booking Cancel</a>|<a href="/Bus/Feedback.html">Feedback</a>
                    <a href="login.jsp">Login</a><a href="login.jsp"</a>
                 </td></tr>
             </table>
        <div>
            <% 
            String fm=request.getParameter("frm");
            String tp=request.getParameter("top");
            String dy=request.getParameter("day");
           
String doj=request.getParameter("doj");
session.setAttribute("doj",doj); 
session.setAttribute("fp",fm); 
session.setAttribute("tp",tp); 
            %>
        </div>
                
<%@ page import="java.lang.Compiler.*"%>
<%@ page import="java.sql.*" %>
                
    <%
        String o1=null;
        Connection cn;
        Statement st;
        ResultSet rs;
        float f1;
        String r1=(String)request.getParameter("city");
        PreparedStatement ps ;
        


    %>
    <form action="log.jsp">      
  <table  border='2px' style='padding: 10px;'>
    
  <tr>  <th> BUS_ID  </th><th> BUS_NO   </th><th> BUS_TYPE  </th><th>   SEAT  </th><th>   FROM </th><th>   TO  </th><th>   DAY  </th><th>   ROUTE_NAME  </th><th>  FARE  </th><th>    ESTIMATED_TIME  </th><th>   DEPARTURE (src)   </th><th>  ARRIVES (dstn.)  </th><th>  ESTIMATED_DISTANCE   </th></tr>
  
 <%  
        Driver dr=new oracle.jdbc.driver.OracleDriver();
        DriverManager.registerDriver(dr); 
        cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
        		st=cn.createStatement();
			rs = st.executeQuery("SELECT * FROM BUS_MASTER where from_place='"+fm+"' and  to_place='"+tp+"' and day='"+dy+"'");
                    
                          while(rs.next()){
                            int v1=rs.getInt(1);
                            String v2=rs.getString(2);
                            String v3=rs.getString(3);
                            int v4=rs.getInt(4);
                            String v5=rs.getString(5);
                            String v6=rs.getString(6);
                            String v7=rs.getString(7);
                            String v8=rs.getString(8);
                            int v9=rs.getInt(9);
                            String v10=rs.getString(10);
                            String v11=rs.getString(11);
                            String v12=rs.getString(12);
                           int v13=rs.getInt(13);
                          
                         out.println("<tr><td>"+v1+" </td><td>  "+v2+ " </td><td>  "+v3+ " </td><td>  "+v4+ " </td><td>  "+v5+" </td><td>  "+v6+" </td><td>  "+v7+" </td><td> "+v8+" </td><td>  "+v9+" </td><td>  "+v10+"hrs </td><td> "+v11+" </td><td>  "+v12+" </td><td>  "+v13+" </td></tr>");
   }
%>

</table>
Enter your choosed Bus_id <input type="text" name="i1">
<br><input type="submit" value="Continue"> 
    </form>
</body>
</html>
