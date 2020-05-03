
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DAOVente;
import view.sortie;

/**
 *
 * @author GEDEON
 */
public class servDetailVente extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            DAOVente vente = new DAOVente();
            sortie v = new sortie();
            RequestDispatcher rd = null;
            
            try{
               if (request.getParameter("btnD") != null){
                    v.setActionu(Integer.parseInt(request.getParameter("action")));
                    v.setIdd(Integer.parseInt(request.getParameter("iddetal")));
                    v.setIdart(vente.getIdProduit(request.getParameter("produit")));
                    v.setPvu(vente.getPrixProduit(request.getParameter("produit")));
                    v.setQtev(Integer.parseInt(request.getParameter("quantite")));
                    vente.InsertD(v);
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
    }

}
