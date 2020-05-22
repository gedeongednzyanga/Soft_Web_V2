/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import view.sortie;
import view.utilisateur;

/**
 *
 * @author GEDEON
 */
public class DAOVente {
    Database db = new Database();
    Connection conn;
    
    public int getIdProduit(String designation){
        int idprod = 0;
        PreparedStatement ps;
        ResultSet rs;
        String requete = "SELECT ida, pus FROM tbl_article where designation = '"+designation+"' ";
        try{
            conn = db.dbConnect();
            ps = conn.prepareStatement(requete);
            rs = ps.executeQuery();
            while(rs.next()){
                idprod = Integer.parseInt(rs.getString("ida"));
            }
            conn.close();
            rs.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return idprod;
    }
    
    public float getPrixProduit(String designation){
        float prixv =0;
        PreparedStatement ps;
        ResultSet rs;
        String requete = "SELECT pus FROM tbl_article where designation = '"+designation+"' ";
        try{
            conn = db.dbConnect();
            ps = conn.prepareStatement(requete);
            rs = ps.executeQuery();
            if(rs.next()){
                prixv = Float.parseFloat(rs.getString("pus"));
            }
            conn.close();
            rs.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return prixv;
    }
    
    public void Insert(Object obj) {
        sortie v = (sortie) obj;
        Connection conn;
        PreparedStatement ps;
        String requete = "CALL INSERT_UPDATE_DELETE_VENTE (?,?,?)";
        try{
            
            conn = db.dbConnect();
            ps = conn.prepareStatement(requete);
            ps.setInt(1, v.getActionu());
            ps.setInt(2, v.getIdsort());
            ps.setInt(3, v.getIdclient());
            ps.executeQuery();
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void InsertD(Object obj) {
        sortie v = (sortie) obj;
        PreparedStatement ps;
        String requete = "CALL INSERT_UPDATE_DETAIL_VENTE (?,?,?,?,?)";
        try{
            
            conn = db.dbConnect();
            ps = conn.prepareStatement(requete);
            ps.setInt(1, v.getActionu());
            ps.setInt(2, v.getIdd());
            ps.setInt(3, v.getIdart());
            ps.setFloat(4, v.getPvu());
            ps.setInt(5, v.getQtev());
           
            ps.executeQuery();
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public List<sortie> Load() {
         List<sortie> donnee = new ArrayList<>();
         Connection conn;
         PreparedStatement ps;
         ResultSet rs;
         String requete ="SELECT * FROM `get_client_vente`  ORDER by id DESC LIMIT 0,1";
         try{
             conn = db.dbConnect();
             ps = conn.prepareStatement(requete);
             rs = ps.executeQuery();
             while(rs.next()){
                donnee.add(new sortie(rs.getInt("id"), rs.getInt("idClient"),
                    rs.getString("nomp")+" "+rs.getString("postnomp")+" "+rs.getString("prenomp"),
                    rs.getString("dateVente")));
             }
             conn.close();
         }catch(Exception ex){
             ex.printStackTrace();
         }
         return donnee;
    }
    public List<sortie> LoadF(int idc) {
         List<sortie> donnee = new ArrayList<>();
         PreparedStatement ps;
         ResultSet rs;
         String requete ="SELECT * FROM get_detail_vente WHERE date(dateVente) = date(now()) AND codeClient ="+idc+"";
         try{
             conn = db.dbConnect();
             ps = conn.prepareStatement(requete);
             rs = ps.executeQuery();
             while(rs.next()){
                donnee.add(new sortie(rs.getInt("idVente"), rs.getInt("idArticle"),
                    rs.getInt("id"), rs.getFloat("pv"), rs.getInt("qte"), rs.getString("designation"),
                rs.getFloat("ptotal")));
             }
             conn.close();
         }catch(Exception ex){
             ex.printStackTrace();
         }
         return donnee;
    }
}
