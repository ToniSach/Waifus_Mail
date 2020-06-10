
package Servlets;

import Models.ConsultasCliente;
import Models.Consultas_Admin;
//import Models.Consultas_admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class InicioSesion extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Correo_Admin = request.getParameter("boxuser");
        String Contra_Admin = request.getParameter("boxpass");
        String Correo_Usuario = request.getParameter("boxuser");
        String Contra_Usuario = request.getParameter("boxpass");
        
        
        Consultas_Admin co = new Consultas_Admin();
        ConsultasCliente cu = new ConsultasCliente();
        
        if(co.autenticacion(Correo_Admin, Contra_Admin)){
            HttpSession objsesiona = request.getSession(false);
            objsesiona.setAttribute("Correo_Admin", Correo_Admin);
            objsesiona.setAttribute("Contra_Admin", Contra_Admin);
            response.sendRedirect("shopAdmin.jsp");
        }
        else if(cu.autenticacionu(Correo_Usuario, Contra_Usuario)){
            HttpSession objsesionu = request.getSession(true);
            objsesionu.setAttribute("Correo_Usuario", Correo_Usuario);
            
            
            response.sendRedirect("shopUsuario.jsp");
        }else{
            response.sendRedirect("Inic_Ses.jsp");
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
        processRequest(request, response);
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