

package fr.m2i.javawebapp.Distributeur.servlet;

import fr.m2i.javawebapp.Distributeur.Distributeur;
import fr.m2i.javawebapp.Distributeur.Produit;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RAISA
 */
public class DistribProduit extends HttpServlet {

    Distributeur D1 = Distributeur.getInstance();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

          int credit = D1.getCredit();
          request.setAttribute("credit", credit);
          request.setAttribute("stock",D1.getStock()) ;
          request.setAttribute("stockSize", D1.getStock().size());
          
           
                  
        
           this.getServletContext().getRequestDispatcher("/WEB-INF/distribProduit.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Ajouter du credit
          if(request.getParameter("credit").equals("Add un credit"))
          {              D1.setCredit(1);            } 
          else{              D1.setCredit(2);          }
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
