
package fr.m2i.javawebapp.session;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RAISA
 */
public class LoginServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
  
       String email =request.getParameter("useremail") ;
       String password = request.getParameter("userpassword");
       User user = UserDb.checkUser(email, password);
       //On essaye de se connecter, on vérifie dans notre basz de donnée que l'utilisateur existe
       if( user != null){
           //les informations de l'utilisateur sont valides, je cree une nouvelle session avec les identifiants envoyés
           HttpSession session = request.getSession(true); //true ecrase toute autre eventuelle session anterieure
           session.setAttribute("user", user);
           
           this.getServletContext().getRequestDispatcher("/WEB-INF/welcome.jsp").forward(request, response);
           
       }else{
           //l'utilisateur est different de null
           //On set le message d'erreur et on affiche la page de login
          String errorMessage = "Les informations que vous avez entrés sont incorrectes, veuillez réessayer";
           request.setAttribute("errorMessage", errorMessage);
           this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
       }
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
