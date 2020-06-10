package Models;

import Classes.Producto;
import java.sql.*;
import java.util.*;


public class ModeloProducto extends Conexion{
    
    public ArrayList<Producto> getAllProductos(){
        ArrayList <Producto> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String sql = "call selectProductos()";
            pst = getConnection().prepareCall(sql);
            rs = pst.executeQuery();
            while(rs.next()){
                productos.add(new Producto(rs.getInt("idProducto"), rs.getString("Nombre_Producto"), rs.getDouble("Precio_Producto"), rs.getString("URL_imgProducto"), rs.getString("Caracter_Producto"), rs.getString("Categoria_Producto")));
            }
            System.out.println("Todo bien en modelo producto"+rs.getInt("idProducto"));
        }catch (Exception e){
            System.out.println("Algo esta mal en Modelo Productos" + e);
            System.out.println(e.getMessage());
            System.out.println("El error esta enss: "+e.getStackTrace().toString());
        }finally{
            try{
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
            }catch (Exception e){
                System.out.println("La conexion esta mal aqui" + e);
            }
        }
        
        return productos;
    }
    
    public Producto getProducto(int id){
        Producto producto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
            String sql = "call selectProducto(?)";
            pst = getConnection().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while(rs.next()){
                producto = new Producto(rs.getInt("idProducto"), rs.getString("Nombre_Producto"),
                        rs.getDouble("Precio_Producto"), rs.getString("URL_imgProducto"), rs.getString("Caracter_Producto"),
                        rs.getString("Categoria_Producto"));
            }
            
        }catch (Exception e){
            System.out.println("Algo esta mal en Modelo Producto" + e);
        }finally{
            try{
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
            }catch (Exception e){
                System.out.println("La conexion esta mal en modelo producto" + e);
            }
        }
        
        return producto;
    }

}
