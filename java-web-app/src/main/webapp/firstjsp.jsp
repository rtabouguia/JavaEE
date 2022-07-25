<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text!:html" pageEncoding="UTF-8%>



<!DOCTYPE html>
<html>
    <jsp:include  page= "include/header.jsp">
            <jsp:param name="title" value="Ma premiere page jsp" />
    </jsp:include>  
    <body>
        <c:set var="name"  value="Anthony"  />
        <h1>Bonjour <c:out value="{name}"  /> ! </h1>
    </body>
</html>
