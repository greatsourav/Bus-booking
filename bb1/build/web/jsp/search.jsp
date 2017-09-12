<%-- 
    Document   : search
    Created on : 16 Jul, 2017, 2:52:33 PM
    Author     : Sravanti
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nm="";
            String fcity=request.getParameter("val");
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sravanti","sravs");
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select Route_Name,DOJ,Estimated_Time,Arrival_Time,Departure_Time,Estimated_Distance from booking where FromCity='"+fcity+"'");
            while(rs.next())
            {
                nm=nm+"#"+rs.getString(1);
            }
            out.print(nm);
                    %>
    </body>
</html>
