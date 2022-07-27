<%-- 
    Document   : login.jsp
    Created on : 27 juil. 2022, 10:06:52
    Author     : RAISA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
    </head>
    <body>
       
        <form method="POST">
             <h1>Connexion</h1>
             <label><b> Nom : </b></label><input type="text" placeholder="Entrer  votre nom" name="username" required><br>
             <label><b> Email : </b></label><input type="text" placeholder="Entrer  votre email" name="useremail" required><br>
             <label><b> Mot de passe : </b></label><input type="text" placeholder="Entrer  votre mot de passe" name="userpassword" required>
             
             <input type="submit" id="submit" value="Connexion">
        </form>
        <c:if test = "${!errorMessage.equals(null)}" > 
         <c:out value= "${errorMessage}" />
        </c:if>
        
    </body>
</html>
