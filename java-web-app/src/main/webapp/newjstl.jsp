<%-- 
    Document   : newjstl
    Created on : 25 juil. 2022, 11:07:38
    Author     : RAISA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nombres pairs compris entre 1 et 30 </title>
    </head>
    <body>
        <c:forEach var="i" begin="1" end="30" step="1">
            <c:if test = "${i%2==0}">
                <p> <c:out value = "${i}" /><p>
            </c:if>
        </c:forEach>
    </body>
</html>
