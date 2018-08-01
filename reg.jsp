<%@ page import="java.lang.Compiler.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regs. Page</title>
    </head>
    <body bgcolor="orange">
        <%
            String fn=request.getParameter("fname");
            String ln=request.getParameter("lname");
            String un=request.getParameter("user");
            String em=request.getParameter("email");
            String pwd=request.getParameter("pass");
            String add=request.getParameter("addr");
            String city=request.getParameter("city");
            String pin=request.getParameter("pincd");
            int cn=Integer.parseInt(request.getParameter("phno"));
            String type=request.getParameter("type");
            
      
   
        Connection connection = null;
        Driver dr=new oracle.jdbc.driver.OracleDriver();
        DriverManager.registerDriver(dr); 
        connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
        
           Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select max(reg_id) from reg_master");
			
                        while(rs.next()){
                             String v1=rs.getString(1);
                             
                        session.setAttribute("rg",(v1+1));
                        }
                       String rg=(String)session.getAttribute("rg");

        Statement st = connection.createStatement();                       
        String command = "insert into Reg_Master values('"+rg+"','"+fn+"','"+ln+"','"+un+"','"+pwd+"','"+type+"','"+em+"','"+add+"','"+city+"','"+pin+"',"+cn+")";
        st.executeUpdate(command);
        %> 
      
        <jsp:forward page="log.jsp"></jsp:forward>
      
      
      
      <%--  PreparedStatement pst=cn.prepareStatement("insert into reg_master values(?,?,?,?,?,?,?,?,?)");
          String regid=email;
         System.out.println("HELLO");
         pst.setString(1,regid);
          pst.setString(2,fn);
          pst.setString(3,ln);
          pst.setString(4,email);
       out.println("HELLO");
          pst.setString(5,addr);
          pst.setString(6,city);
          pst.setString(7,pincd);
          pst.setString(8,phno);
          pst.setString(9,pass);          
         out.println("HELLO");
          PreparedStatement pst1=cn.prepareStatement("commit");
         pst.executeQuery();
         pst1.executeUpdate();
         out.println("HELLO");
         c++;
         cn.close();
           --%> 
    </body>
</html>
