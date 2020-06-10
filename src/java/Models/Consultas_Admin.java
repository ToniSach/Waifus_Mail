/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author tonis
 */
import java.sql.*;
public class Consultas_Admin extends Conexion{
    public boolean autenticacion(String Correo_Admin, String Contra_Admin){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consultaadmin = "select * from administrador where Correo_Admin = ? and Contra_Admin = ?";
            pst = getConnection().prepareStatement(consultaadmin);
            pst.setString(1, Correo_Admin);
            System.out.println(Correo_Admin);
            pst.setString(2, Contra_Admin);
            System.out.println(Contra_Admin);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
            
        }catch(Exception e){
            System.err.println("Error"+e);
        }finally{
            try{
                if(getConnection() != null ) getConnection().close();
                if(pst != null ) pst.close();
                if(rs != null ) rs.close();
            }catch (Exception e){
                System.err.println("Error"+e);
            }
        }

        return false;
    }
    
    
    public boolean registrar_admin(String Name_Admin, String ApPat_Admin, String ApMat_Admin, String Correo_Admin, String Contra_Admin){
            
        PreparedStatement pst = null;
        
        try{
            String consulta = "insert into administrador (Name_Admin, ApPat_Admin, ApMat_Admin"
                    + ", Correo_Admin, Contra_Admin) values (?,?,?,?,?)";
            
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, Name_Admin);
            pst.setString(2, ApPat_Admin);
            pst.setString(3, ApMat_Admin);
            pst.setString(4, Correo_Admin);
            pst.setString(5, Contra_Admin);
           
            
            if(pst.executeUpdate() == 1){
                
                return true;
            }
        }catch(Exception e){
            System.err.println("Error"+e);
        }finally{
            try{
                if(getConnection() != null ) getConnection().close();
                if(pst != null ) pst.close();
            }catch (Exception e){
                System.err.println("Error"+e);
            }
        }
        return false;
    }

}
