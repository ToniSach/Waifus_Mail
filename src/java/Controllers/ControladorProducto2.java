/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Classes.Producto;
import Models.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tonis
 */
public class ControladorProducto2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String listarprod = "Vista_crud_Productos/Listar_productos.jsp";
    String addprod = "Vista_crud_Productos/Add_producto.jsp";
    String editprod = "Vista_crud_Productos/Edit_producto.jsp";
    Producto p = new Producto();
    ProductoDAO dao = new ProductoDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProducto2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProducto2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listarprod")) {
            acceso=listarprod;
        } else if(action.equalsIgnoreCase("addprod")) {
            acceso=addprod;
        } else if(action.equalsIgnoreCase("Agregar")) {
            String Nom_prod = request.getParameter("txtNombre");
            String Precio_Producto= request.getParameter("txtPr");
            Double Precio_Producto1 = Double.valueOf(Precio_Producto);
            String URL_Producto = request.getParameter("txtURL");
            String Carc_Producto = request.getParameter("txtCr");
            String Cat_Producto = request.getParameter("txtCg");
            p.setNombreP(Nom_prod);
            p.setPrecio(Precio_Producto1);
            p.setImagen(URL_Producto);
            p.setCaracteristicas(Carc_Producto);
            p.setCategoria(Cat_Producto);
            dao.addprod(p);
            acceso=listarprod;
        } else if (action.equalsIgnoreCase("editar")){
            request.setAttribute("idprod", request.getParameter("id"));
            acceso = editprod;
        } else if (action.equalsIgnoreCase("Actualizar")){
            String id_prod = request.getParameter("txtId");
            int id_prod1 = Integer.valueOf(id_prod).intValue();
            String Nom_prod = request.getParameter("txtNombre");
            String Precio_Producto= request.getParameter("txtPr");
            Double Precio_Producto1 = Double.valueOf(Precio_Producto);
            String URL_Producto = request.getParameter("txtURL");
            String Carc_Producto = request.getParameter("txtCr");
            String Cat_Producto = request.getParameter("txtCg");
            p.setId(id_prod1);
            p.setNombreP(Nom_prod);
            p.setPrecio(Precio_Producto1);
            p.setImagen(URL_Producto);
            p.setCaracteristicas(Carc_Producto);
            p.setCategoria(Cat_Producto);
            dao.editprod(p);
            acceso=listarprod;
        } else if(action.equalsIgnoreCase("eliminar")){
            String id_prod = request.getParameter("id");
            int id_prod1 = Integer.valueOf(id_prod).intValue();
            System.out.println(request.getParameter("id"));
            p.setId(id_prod1);
            dao.eliminarprod(id_prod1);
            acceso=listarprod;
        }
        
            RequestDispatcher vista = request.getRequestDispatcher(acceso);
            vista.forward(request, response);

        
        }catch(Exception e){
            System.out.println("Tenemos un error en controlador producto :c "+e);

        }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
