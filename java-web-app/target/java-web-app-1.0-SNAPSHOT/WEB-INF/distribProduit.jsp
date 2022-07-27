<%-- 
    Document   : distribProduit
    Created on : 26 juil. 2022, 09:36:59
    Author     : RAISA
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application gestion des stocks</title>
    </head>
    <body>
        <h1>Credit restant: <c:out value ="${credit}" /> </h1>
        <p> Liste des produits </p>
        <table id="matable" >
                  <tr>
                <th>Numéro de produit</th>
                <th>Nom</th>
                <th>Quantite</th>
                <th>Prix</th>
                </tr>
            <c:forEach var ="produit" items="${stock}">
                
                 <tr>
                <td><c:out value = "${produit.getId()}" /></td>
                <td><c:out value = "${produit.getNom()}" /></td>
                <td><c:out value = "${produit.getQuantite()}" /></td>
                <td><c:out value = "${produit.getPrix()}" /> </td>
                </tr>
            </c:forEach>
           
        </table>
        
        <form name="addCredit"  method="POST">
            <input  type="submit" value="Add un credit" name="credit" >
                      
            <input type="submit" value="Add deux credits"name="credit"> 
        </form>
            
    </body>
</html>
