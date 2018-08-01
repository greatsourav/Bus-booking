<%-- 
    Document   : err
    Created on : 19 May, 2017, 10:26:41 AM
    Author     : SOURAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error Occured!</h1>
        <%@page isErrorPage="true"  %>
        <%
            out.println(""+exception.getMessage());
        %>
    </body>
</html>
