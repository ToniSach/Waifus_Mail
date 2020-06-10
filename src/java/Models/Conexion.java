package Models;

import java.sql.*;

public class Conexion {
    
    private String username = "root";
    private String password = "n0m3l0";
    private String hostname = "localhost";
    private String port = "3306";
    private String database = "db_waimai";
    private String classname = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://"+hostname+":"+port+"/"+database;
    private Connection conn;

    public Conexion() {
        try {
            Class.forName(classname);
            this.conn = DriverManager.getConnection(url, username, password);
            System.out.println("Conexion Establecida Satisfactoriamente");
        } catch (Exception e) {
            System.err.println(("Error al conectar: ")+e.getMessage());
        }
    }
    
    public Connection getConnection(){
        return this.conn;
    }
}
