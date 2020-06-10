<%-- 
    Document   : Edit_usuario
    Created on : 30/05/2020, 04:49:55 PM
    Author     : tonis
--%>

<%@page import="Classes.Usuario"%>
<%@page import="Models.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession objsesiona = request.getSession(false);
    String Correo_Admin =(String)objsesiona.getAttribute("Correo_Admin");
    if  (Correo_Admin.equals("")) {
            response.sendRedirect("Inic_Ses.jsp");
        }

    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/usuarioeditcss.css"/><link rel="stylesheet" href="url"/>
    </head>
    <body>
            <%
                UsuarioDAO dao = new UsuarioDAO();
                int id=Integer.parseInt((String)request.getAttribute("idusu"));
                Usuario u=(Usuario)dao.listarusu(id);
                
            %>
        <header class="header">
		<div class="container titulo-nav-container">
			<a href="#" class="titulo">WAIMAI</a>
			<a href="#" class="saludo">Bienvenido <% out.print(Correo_Admin);%></a>
			<nav class="nav">
				<ul>
					<li><a href="shopAdmin.jsp"><span class="icon-home3"></span> Inicio</a></li>
					<li><a href="ControladorUsuario?accion=listarusua">Lista Usuarios</a></li>
					<li><a href="ControladorProducto2?accion=listarprod">Lista Productos</a></li>
					<li><a href="Registrar_Admin.jsp">Agregar Admin</a></li>
                                        <li><a href="#">Graficas</a></li>
					<li><a href="controladorsaliradm">Cerrar Sesión</a></li>
				</ul>
			</nav>
		</div>
			
	</header>
    <div class="main">
        <div class="cont-edit">
            <h1>Editar usuario</h1>
            <div class="cnt-ffff">
            <form action="ControladorUsuario">
                Nombre:<br>
                <input type="text" name="txtNombre" value="<%= u.getNom_usuarioo() %>"><br>
                Apellido Paterno:<br>
                <input type="text" name="txtAP" value="<%= u.getApPat_usuarioo() %>"><br>
                Apellido Materno:<br>
                <input type="text" name="txtAM" value="<%= u.getApMat_usuarioo() %>"><br>
                Fecha de nacimiento:<br>
                <input type="text" name="txtFN" value="<%= u.getFechaNac_usuarioo() %>"><br>
                Correo:<br>
                <input type="text" name="txtCR" value="<%= u.getCorreo_usuarioo() %>"><br>
                Contraseña:<br>
                <input type="Password" name="txtCN" value="<%= u.getContra_usuarioo() %>"><br>
                Direccion:<br>
                <input type="text" name="txtDR" value="<%= u.getDireccion_usuarioo() %>"><br>
                Codigo Postal<br>
                <input type="text" name="txtCP" value="<%= u.getCP_usuarioo() %>"><br>
                Telefono:<br>
                <input type="text" name="txtTel" value="<%= u.getTel_usuarioo() %>"><br>
                <input type="hidden" name="txtId" value="<%= u.getId_usuarioo() %>"><br>
                <input type="submit" id="btnact" name="accion" value="Actualizar">
            </form>
            </div>
        </div>
    </div>
        
        <footer class="footer">
        <div>
            <h5>Copyright © 2020 WaiMai. Todos los derechos reservados.</h5>
        </div>
    </footer>
    </body>
</html>
