/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Classes.Usuario;
import Models.UsuarioDAO;
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
public class ControladorUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    String listarusua = "Vista_crud_Usuario/Listar_usuarios.jsp";
    String addusua = "Vista_crud_Usuario/Add_usuario.jsp";
    String editusua = "Vista_crud_Usuario/Edit_usuario.jsp";
    Usuario u = new Usuario();
    UsuarioDAO dao = new UsuarioDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorUsuario</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorUsuario at " + request.getContextPath() + "</h1>");
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
        if (action.equalsIgnoreCase("listarusua")) {
            acceso=listarusua;
            System.out.println("Entra en el if");
        } else if(action.equalsIgnoreCase("addusua")) {
            acceso=addusua;
        } else if(action.equalsIgnoreCase("Agregar")) {
            String Nom_usuarioo = request.getParameter("txtNombre");
            String ApPat_usuarioo = request.getParameter("txtAP");
            String ApMat_usuarioo = request.getParameter("txtAM");
            String FechaNac_usuarioo = request.getParameter("txtFN");
            String Correo_Usuarioo = request.getParameter("txtCR");
            String Contra_Usuarioo = request.getParameter("txtCN");
            String Direccion_Usuarioo = request.getParameter("txtDR");
            String CP_Usuarioo = request.getParameter("txtCP");
            int CP_Usuario1 = Integer.valueOf(CP_Usuarioo).intValue();
            String Tel_Usuarioo = request.getParameter("txtTel");
            u.setNom_usuarioo(Nom_usuarioo);
            u.setApPat_usuarioo(ApPat_usuarioo);
            u.setApMat_usuarioo(ApMat_usuarioo);
            u.setFechaNac_usuarioo(FechaNac_usuarioo);
            u.setCorreo_usuarioo(Correo_Usuarioo);
            u.setContra_usuarioo(Contra_Usuarioo);
            u.setDireccion_usuarioo(Direccion_Usuarioo);
            u.setCP_usuarioo(CP_Usuario1);
            u.setTel_usuarioo(Tel_Usuarioo);
            dao.addusu(u);
            acceso=listarusua;
        } else if (action.equalsIgnoreCase("editar")){
            request.setAttribute("idusu", request.getParameter("id"));
            acceso = editusua;
        } else if (action.equalsIgnoreCase("Actualizar")){
            String id_usuarioo = request.getParameter("txtId");
            int id_usuarioo1 = Integer.valueOf(id_usuarioo).intValue();
            String Nom_usuarioo = request.getParameter("txtNombre");
            String ApPat_usuarioo = request.getParameter("txtAP");
            String ApMat_usuarioo = request.getParameter("txtAM");
            String FechaNac_usuarioo = request.getParameter("txtFN");
            String Correo_Usuarioo = request.getParameter("txtCR");
            String Contra_Usuarioo = request.getParameter("txtCN");
            String Direccion_Usuarioo = request.getParameter("txtDR");
            String CP_Usuarioo = request.getParameter("txtCP");
            int CP_Usuario1 = Integer.valueOf(CP_Usuarioo).intValue();
            String Tel_Usuarioo = request.getParameter("txtTel");
            u.setId_usuarioo(id_usuarioo1);
            u.setNom_usuarioo(Nom_usuarioo);
            u.setApPat_usuarioo(ApPat_usuarioo);
            u.setApMat_usuarioo(ApMat_usuarioo);
            u.setFechaNac_usuarioo(FechaNac_usuarioo);
            u.setCorreo_usuarioo(Correo_Usuarioo);
            u.setContra_usuarioo(Contra_Usuarioo);
            u.setDireccion_usuarioo(Direccion_Usuarioo);
            u.setCP_usuarioo(CP_Usuario1);
            u.setTel_usuarioo(Tel_Usuarioo);
            dao.editusu(u);
            acceso=listarusua;
        } else if(action.equalsIgnoreCase("eliminar")){
            System.out.println("Si ingresa a eliminar");
            System.out.println("Si ingresa a eliminar");
            System.out.println("Si ingresa a eliminar");
            String id_usuarioo = request.getParameter("id");
            int id_usuarioo1 = Integer.valueOf(id_usuarioo).intValue();
            System.out.println(request.getParameter("id"));
            u.setId_usuarioo(id_usuarioo1);
            dao.eliminarusu(id_usuarioo1);
            acceso=listarusua;
        }
        
            RequestDispatcher vista = request.getRequestDispatcher(acceso);
            vista.forward(request, response);

        
        }catch(Exception e){
            System.out.println("Tenemos un error en controladorusuario :c "+e);
            System.out.println(e.getMessage());
            System.out.println("El error esta ennnnnnnnnnnnn: "+e.getStackTrace().toString());
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
