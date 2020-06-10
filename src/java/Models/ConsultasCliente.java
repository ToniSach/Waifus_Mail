
package Models;

import java.sql.*;
public class ConsultasCliente extends Conexion{
     public boolean autenticacionu(String Correo_Usuario, String Contra_Usuario){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String consulta = "select * from usuario where Correo_Usuario = ? and Contra_Usuario = ?";
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, Correo_Usuario);
            pst.setString(2, Contra_Usuario);
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
     
    public boolean registrar(String Nom_Usuario, String ApPat_Usuario, String ApMat_Usuario, String FechaNac_Usuario, 
            String Correo_Usuario, String Contra_Usuario, String Direccion_Usuario, int CP_Usuario, 
            int Tel_Usuario){
            
        PreparedStatement pst = null;
        
        try{
            String consulta = "insert into usuario (Nom_Usuario, ApPat_Usuario, ApMat_Usuario, FechaNac_Usuario,"
                    + " Correo_Usuario, Contra_Usuario, Direccion_Usuario, CP_Usuario, Tel_Usuario) values (?,?,?,?,?,?,?,?,?)";
            
            pst = getConnection().prepareStatement(consulta);
            pst.setString(1, Nom_Usuario);
            pst.setString(2, ApPat_Usuario);
            pst.setString(3, ApMat_Usuario);
            pst.setString(4, FechaNac_Usuario);
            pst.setString(5, Correo_Usuario);
            pst.setString(6, Contra_Usuario);
            pst.setString(7, Direccion_Usuario);
            pst.setInt(8, CP_Usuario);
            pst.setInt(9, Tel_Usuario);
            
            
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
