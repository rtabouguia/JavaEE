<%-- 
    Document   : firstjsp
    Created on : 22 juil. 2022, 15:19:21
    Author     : RAISA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include  page="/include/header.jsp">     
            <jsp:param name="title" value="ma nouvelle jsp with param"/>
         </jsp:include>
        
    </head>
    <body>
        <h1>Ma 1e page jsp</h1>
        <p>Bonjour ${name}</p>
    </body>
</html>
