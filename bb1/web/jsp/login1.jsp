<%-- 
    Document   : login1
    Created on : 17 Jul, 2017, 7:29:48 AM
    Author     : Sravanti
--%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname=request.getParameter("ud");
            String pwd=request.getParameter("pw");
             Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sravanti","sravy");
          Statement st=cn.createStatement();
             ResultSet rs=st.executeQuery("select pass from login where uname='"+ uname+"'");
          if(rs.next())
          {
              if(rs.getString(1).equals(pwd))
              {
                  %>
                  <jsp:forward page="success.jsp" />
                  <% 
                 }
                  else 
                 {
                  %>
                  <h3>Sorry Login Failed... Try Again </h3>
                  <jsp:include page="/login.html" />
                  <%
                 }
          }
            %>
    </body>
</html>
