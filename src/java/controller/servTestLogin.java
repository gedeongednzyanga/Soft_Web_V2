
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import model.DAOUtilisateur;
import model.Database;
import view.utilisateur;

/**
 *
 * @author GEDEON
 */
public class servTestLogin extends HttpServlet {
    
    Database db = new Database();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String userName = request.getParameter("user");
            String passwordUser = request.getParameter("pass");  
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            HttpSession session = request.getSession();
            RequestDispatcher rd = null;
            try{
                con = db.dbConnect();
                ps = con.prepareStatement("SELECT * FROM tbl_utilisateur WHERE nom_user=? and pass_user=?");
                ps.setString(1, userName);
                ps.setString(2, passwordUser);
                rs = ps.executeQuery();
                if (rs.next()){
                    session.setAttribute("user", rs.getString("nom_user"));
                    session.setAttribute("compte", rs.getString("type_compte"));
                    session.setAttribute("niveau", rs.getString("niveau_acces"));
                    rd = request.getRequestDispatcher("adminAccueil.jsp");
                }else{
                    rd = request.getRequestDispatcher("index.jsp");
                }
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
