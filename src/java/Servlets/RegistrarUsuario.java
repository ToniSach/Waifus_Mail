
package Servlets;

import Models.ConsultasCliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegistrarUsuario extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String Nom_Usuario = request.getParameter("Nom_Usuario");
        String ApPat_Usuario = request.getParameter("ApPat_Usuario");
        String ApMat_Usuario = request.getParameter("ApMat_Usuario");
        String FechaNac_Usuario_dd = request.getParameter("FechaNac_Usuario_dd");
        String FechaNac_Usuario_mm = request.getParameter("FechaNac_Usuario_mm");
        String FechaNac_Usuario_yyyy = request.getParameter("FechaNac_Usuario_yyyy");
        String FechaNac_Usuario = FechaNac_Usuario_dd+"/"+FechaNac_Usuario_mm+"/"+FechaNac_Usuario_yyyy;
        String Correo_Usuario = request.getParameter("Correo_Usuario");
        String Contra_Usuario = request.getParameter("Contra_Usuario");
        String Direccion_Usuario = request.getParameter("Direccion_Usuario");
        String CP_Usuario = request.getParameter("CP_Usuario");
        int CP_Usuario1 = Integer.valueOf(CP_Usuario).intValue();
        String Tel_Usuario = request.getParameter("Tel_Usuario");
        int Tel_Usuario1 = Integer.valueOf(Tel_Usuario).intValue();
        
        
        ConsultasCliente co = new ConsultasCliente();
        
        if(co.registrar(Nom_Usuario, ApPat_Usuario, ApMat_Usuario, FechaNac_Usuario,Correo_Usuario, Contra_Usuario, Direccion_Usuario, CP_Usuario1, Tel_Usuario1)){
            response.sendRedirect("Inic_Ses.jsp");
        }else{
            response.sendRedirect("Regis_Usuario.jsp");
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
