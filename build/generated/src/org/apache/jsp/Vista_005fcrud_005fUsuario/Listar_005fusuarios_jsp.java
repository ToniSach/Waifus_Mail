package org.apache.jsp.Vista_005fcrud_005fUsuario;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;
import java.util.List;
import Classes.Usuario;
import Models.UsuarioDAO;

public final class Listar_005fusuarios_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <h1>Usuarios</h1>\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Id</th>\n");
      out.write("                        <th>Nombre</th>\n");
      out.write("                        <th>Ap Paterno</th>\n");
      out.write("                        <th>Ap Materno</th>\n");
      out.write("                        <th>Fecha Nacimiento</th>\n");
      out.write("                        <th>Correo</th>\n");
      out.write("                        <th>Contraseña</th>\n");
      out.write("                        <th>Direccion</th>\n");
      out.write("                        <th>Codigo postal</th>\n");
      out.write("                        <th>Telefono</th>\n");
      out.write("                        <th>Acciones</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                ");

                    UsuarioDAO usudao = new UsuarioDAO();
                    List<Usuario> listusu = usudao.listarusuario();
                    Iterator<Usuario> iter = listusu.iterator();
                    Usuario us = null;
                    while(iter.hasNext()){
                        
                        us = iter.next();
                        
                    
                
      out.write("\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>");
      out.print( us.getId_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getNom_usuarioo());
      out.write("</td> \n");
      out.write("                        <td>");
      out.print( us.getApPat_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getApMat_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getFechaNac_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getCorreo_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getContra_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getDireccion_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getCP_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( us.getTel_usuarioo());
      out.write("</td>\n");
      out.write("                        <td>Nothing 4 now</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
