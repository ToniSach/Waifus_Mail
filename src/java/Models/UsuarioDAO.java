/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Models.Conexion;
import Classes.Usuario;
import interfaces.CRUD_Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tonis
 */
public class UsuarioDAO implements CRUD_Usuario{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    Usuario u = new Usuario();
    
    @Override
    public List listarusuario() {
        ArrayList<Usuario> listusu = new ArrayList();
        String sql = "select * from usuario";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario usua = new Usuario();
                usua.setId_usuarioo(rs.getInt("idUsuario"));
                usua.setNom_usuarioo(rs.getString("Nom_usuario"));
                usua.setApPat_usuarioo(rs.getString("ApPat_Usuario"));
                usua.setApMat_usuarioo(rs.getString("ApMat_Usuario"));
                usua.setFechaNac_usuarioo(rs.getString("FechaNac_Usuario"));
                usua.setCorreo_usuarioo(rs.getString("Correo_Usuario"));
                usua.setContra_usuarioo(rs.getString("Contra_Usuario"));
                usua.setDireccion_usuarioo(rs.getString("Direccion_Usuario"));
                usua.setCP_usuarioo(rs.getInt("CP_Usuario"));
                usua.setTel_usuarioo(rs.getString("Tel_Usuario"));
                listusu.add(usua);
            }
        } catch(Exception e){
            System.out.println("Tenemos un error en usuario dao :c "+e);
            System.out.println(e.getMessage());
            System.out.println("El error esta ennnnnnnnnnnnn: "+e.getStackTrace().toString());
        }

        return listusu;
    }

    @Override
    public Usuario listarusu(int id) {
        String sql = "select * from usuario where  idUsuario = "+id;
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                u.setId_usuarioo(rs.getInt("idUsuario"));
                u.setNom_usuarioo(rs.getString("Nom_usuario"));
                u.setApPat_usuarioo(rs.getString("ApPat_Usuario"));
                u.setApMat_usuarioo(rs.getString("ApMat_Usuario"));
                u.setFechaNac_usuarioo(rs.getString("FechaNac_Usuario"));
                u.setCorreo_usuarioo(rs.getString("Correo_Usuario"));
                u.setContra_usuarioo(rs.getString("Contra_Usuario"));
                u.setDireccion_usuarioo(rs.getString("Direccion_Usuario"));
                u.setCP_usuarioo(rs.getInt("CP_Usuario"));
                u.setTel_usuarioo(rs.getString("Tel_Usuario"));

            }
        } catch(Exception e){
            System.out.println("Tenemos un error en usuario dao :c "+e);
            System.out.println(e.getMessage());
            System.out.println("El error esta ennnnnnnnnnnnn: "+e.getStackTrace().toString());
        }

        return u;
    }

    @Override
    public boolean addusu(Usuario usua) {
        
        String sql = "insert into usuario (Nom_Usuario, ApPat_Usuario, ApMat_Usuario, FechaNac_Usuario,"
                    + " Correo_Usuario, Contra_Usuario, Direccion_Usuario, CP_Usuario, Tel_Usuario)"
                + " values ('"+usua.getNom_usuarioo()+"','"+usua.getApPat_usuarioo()+"','" +usua.getApMat_usuarioo()+"',"
                + "'"+usua.getFechaNac_usuarioo()+"','"+usua.getCorreo_usuarioo()+"',"
                + "'"+usua.getContra_usuarioo()+"','"+usua.getDireccion_usuarioo()+"','"+usua.getCP_usuarioo()+"','"+usua.getTel_usuarioo()+"')";
        System.out.println("    Errror super add usu .-. "+usua.getNom_usuarioo());
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error en addusu: "+e);
        }
        return false;
    }

    @Override
    public boolean editusu(Usuario usua) {
        String sql = "update usuario set Nom_Usuario='"+usua.getNom_usuarioo()+"',ApPat_Usuario='"+usua.getApPat_usuarioo()+"',ApMat_Usuario='" +usua.getApMat_usuarioo()+"',"
                + "FechaNac_Usuario='"+usua.getFechaNac_usuarioo()+"',Correo_Usuario='"+usua.getCorreo_usuarioo()+"',"
                + "Contra_Usuario='"+usua.getContra_usuarioo()+"',Direccion_Usuario='"+usua.getDireccion_usuarioo()+"',CP_Usuario='"+usua.getCP_usuarioo()+"',Tel_Usuario='"+usua.getTel_usuarioo()+"' where idUsuario="+usua.getId_usuarioo();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate(); 
        }catch(Exception e){
            System.out.println("Hay errores en editusu"+ e);
        }
       return false; 
    } 

    @Override
    public boolean eliminarusu(int id) {
        String sql="delete from usuario where idUsuario="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error en eliminar");
        }
        return false;
    }
    
}
