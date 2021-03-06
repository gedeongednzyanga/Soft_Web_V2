
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DAOVente;
import view.sortie;

/**
 *
 * @author GEDEON
 */
public class servVente extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            DAOVente vente = new DAOVente();
            sortie v = new sortie();
            RequestDispatcher rd = null;
            
            HttpSession session = request.getSession();
            session.setAttribute("id", request.getParameter("idPatient"));
            session.setAttribute("client", request.getParameter("patient"));
           
            try{
                if(request.getParameter("btn") != null){
                    v.setActionu(Integer.parseInt(request.getParameter("action")));
                    v.setIdsort(Integer.parseInt(request.getParameter("idvente")));
                    v.setIdclient(Integer.parseInt(request.getParameter("idPatient")));
                    v.setIdart(Integer.parseInt(request.getParameter("produit")));
                    vente.Insert(v);    
                }
                rd = request.getRequestDispatcher("nouveauSorti.jsp");
            }catch(Exception e){
                e.printStackTrace();
            }
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
