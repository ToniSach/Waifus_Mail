/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import Classes.Producto;
import Models.Conexion;
import interfaces.CRUD_Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tonis
 */
public class ProductoDAO implements CRUD_Producto {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    Producto p = new Producto();
    
    @Override
    public List listarproducto() {
        ArrayList<Producto> listprod = new ArrayList();
        String sql = "select * from productos";
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Producto prod = new Producto();
                prod.setId(rs.getInt("idProducto"));
                prod.setNombreP(rs.getString("Nombre_Producto"));
                prod.setPrecio(rs.getDouble("Precio_Producto"));
                prod.setImagen(rs.getString("URL_imgProducto"));
                prod.setCaracteristicas(rs.getString("Caracter_Producto"));
                prod.setCategoria(rs.getString("Categoria_Producto"));
                listprod.add(prod);
            }
        } catch(Exception e){
            System.out.println("Tenemos un error en listar producto :c "+e);

        }

        return listprod;
    }

    @Override
    public Producto listarprod(int id) {
        String sql = "select * from productos where  idProducto = "+id;
        
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("idProducto"));
                p.setNombreP(rs.getString("Nombre_Producto"));
                p.setPrecio(rs.getDouble("Precio_Producto"));
                p.setImagen(rs.getString("URL_imgProducto"));
                p.setCaracteristicas(rs.getString("Caracter_Producto"));
                p.setCategoria(rs.getString("Categoria_Producto"));

            }
        } catch(Exception e){
            System.out.println("Tenemos un error en listar prod :c "+e);
            System.out.println(e.getMessage());
            System.out.println("El error esta ennnnnnnnnnnnn: "+e.getStackTrace().toString());
        }

        return p;
    }

    @Override
    public boolean addprod(Producto prod) {
        String sql = "insert into productos (Nombre_Producto, Precio_Producto, URL_imgProducto, Caracter_Producto,"
                    + " Categoria_Producto) values ('"+prod.getNombreP()+"','"+prod.getPrecio()+"','" +prod.getImagen()+"',"
                + "'"+prod.getCaracteristicas()+"','"+prod.getCategoria()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error en addprod: "+e);
        }
        return false;
    }

    @Override
    public boolean editprod(Producto prod) {
        String sql = "update productos set Nombre_Producto='"+prod.getNombreP()+"',Precio_Producto='"+prod.getPrecio()+"',URL_imgProducto='" +prod.getImagen()+"',"
                + "Caracter_Producto='"+prod.getCaracteristicas()+"',Categoria_Producto='"+prod.getCategoria()+"' where idProducto="+prod.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate(); 
        }catch(Exception e){
            System.out.println("Hay errores en editprod"+ e);
        }
       return false;
    }

    @Override
    public boolean eliminarprod(int id) {
        String sql="delete from productos where idProducto="+id;
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
