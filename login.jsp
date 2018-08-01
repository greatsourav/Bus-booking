<%-- 
    Document   : login
    Created on : Sep 24, 2017, 1:20:31 PM
    Author     : Mrimon Guha
--%>
<%@ page import="java.lang.Compiler.*"%>
<%@ page import="java.sql.*" %>
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
            
       
  
           Driver dr=new oracle.jdbc.driver.OracleDriver();
           DriverManager.registerDriver(dr); 
           Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
           Statement st=cn.createStatement();
	   ResultSet rs=st.executeQuery("select password from reg_master where user_name='"+uname+"'");
           
          while(rs.next())
            {

          
              if(rs.getString(1).equals(pwd))
            {
                    session.setAttribute("uname",uname);  
                %>
                <jsp:forward page="Conf.jsp"></jsp:forward>
            <%
            }else
            {
                %>
                <jsp:forward page="login1.html"></jsp:forward>
                <%
            }    
          }

        

           
       %>
    </body>
</html>
