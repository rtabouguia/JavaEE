<%-- 
    Document   : countWordsServlet
    Created on : 25 juil. 2022, 12:12:49
    Author     : RAISA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method ="GET" action="CounterWordsServlet">
            <p>Inserez une phrase
                <input type="text" name="sentence" value= "" tabindex="10" />
                <button type="submit" value="Nombre de mots">Nombre de mots</button>
               
            </p>
        </form>
        <p><c:out value="${nbreMot}" /><p>
        
            
    
    </body>
</html>
