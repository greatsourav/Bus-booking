    <%-- 
    Document   : success
    Created on : 17 Jul, 2017, 7:39:19 AM
    Author     : Sravanti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <img src="/bb1/images/im4.PNG" height="300" width="1350" />
       <table align="left" border="0" width="270">
           <tr>
               <td><a href="/bb1/p1.html" style="text-decoration: none">Home</a></td>
           </tr>
           <tr>
               <td><a href="/bb1/bsch.html" style="text-decoration: none">Bus Schedule</a></td>
           </tr>
           <tr>
               <td><a href="/bb1/addbus.html" style="text-decoration: none">Add Bus</a></td>
           </tr>
           <tr>
               <td>Add Pickup Stand</td>
           </tr>
           <tr>
               <td>View Report</td>
           </tr>
           <tr>
               <td>Logout</td>
           </tr>
       </table>
       <%
           String name=request.getParameter("ud");
           %>
         Welcome!! <font color="orange"><% out.println(name); %> </font>To G.S.R.T.C<br>
        <h2><font color="orange">Welcome to Gujarat State Road Transportation Corporation- Administrator Home </font></h2>
        <a href="/bb1/upn.html">Update News</a> | <a href="/bb1/chnpw.html">Change Password</a> | <a href="/bb1/ud.html">User Details</a> | <a href="/bb1/vf.html">View Feedback</a>    </body>
</html>
