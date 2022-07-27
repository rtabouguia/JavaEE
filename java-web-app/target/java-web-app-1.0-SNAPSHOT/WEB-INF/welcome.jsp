<%-- 
    Document   : welcome
    Created on : 27 juil. 2022, 10:07:18
    Author     : RAISA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome page</title>
    </head>
    <body>
        <h1>Bienvenue "${sessionScope.user.email}"! vous etes un "${sessionScope.user.role} </h1>
        <a href="logout"> Deconnexion </a>
    </body>
</html>
