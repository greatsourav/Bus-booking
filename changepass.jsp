<%-- 
    Document   : changepass
    Created on : Oct 7, 2017, 7:39:27 AM
    Author     : Mrimon Guha
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="orange">
       <% 
         String uname=request.getParameter("userid");
            String pwd=request.getParameter("pass1");
            String pwd_new=request.getParameter("pass2");
            String pwd_n=request.getParameter("pass3");
             Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","busbook","mrimon");
          Statement st=cn.createStatement();
          if(pwd_new==pwd_n)
          {
             int k=st.executeUpdate("Insert Into Log_Master(Password) values('"+ pwd_new+"') where Username='"+uname+"'");
                    if(k!=0)
                    {              
              {                  %>
                 <jsp:forward page="/Bus/userhome.html" />
                 %>
                 }
          }
          else
          {
          <h3>Passwords don't match</h3>
          %>        
                 <jsp:forward page="/Bus/ChangePass.html" />
          %>
          }
        }
        %>
    </body>
</html>
