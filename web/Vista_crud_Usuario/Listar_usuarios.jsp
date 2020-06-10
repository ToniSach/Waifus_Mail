<%-- 
    Document   : Listar_usuarios
    Created on : 30/05/2020, 04:50:22 PM
    Author     : tonis
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
        <link rel="stylesheet" href="css/usuarioo.css"/><link rel="stylesheet" href="url"/>
    </head>
    <body>
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
		<div class="cont-table">
			<div class="content-tittab"><h1>Usuarios</h1></div>
			<div class="contentadd">
				<ul>
					<li><a href="ControladorUsuario?accion=addusua">Agregar nuevo</a></li>
				</ul>
			</div>
			<div class="tab">
	            <table border="1" cellspacing="0">
	                <thead>
	                    <tr>
	                        <th>Id</th>
	                        <th>Nombre</th>
	                        <th>Ap Paterno</th>
	                        <th>Ap Materno</th>
	                        <th>Fecha Nacimiento</th>
	                        <th>Correo</th>
	                        <th>Contraseña</th>
	                        <th>Direccion</th>
	                        <th>Codigo postal</th>
	                        <th>Telefono</th>
	                        <th>Acciones</th>
	                    </tr>
	                </thead>
                        <%
                            UsuarioDAO usudao = new UsuarioDAO();
                            List<Usuario> listusu = usudao.listarusuario();
                            Iterator<Usuario> iter = listusu.iterator();
                            Usuario us = null;
                            while(iter.hasNext()){
                                us = iter.next();


                        %>
	                <tbody>
	                    <tr>
	                        <td><%= us.getId_usuarioo()%></td>
                                <td><%= us.getNom_usuarioo()%></td> 
                                <td><%= us.getApPat_usuarioo()%></td>
                                <td><%= us.getApMat_usuarioo()%></td>
                                <td><%= us.getFechaNac_usuarioo()%></td>
                                <td><%= us.getCorreo_usuarioo()%></td>
                                <td><%= us.getContra_usuarioo()%></td>
                                <td><%= us.getDireccion_usuarioo()%></td>
                                <td><%= us.getCP_usuarioo()%></td>
                                <td><%= us.getTel_usuarioo()%></td>
	                        <td>
	                        	<div class="edel">
	                        		<ul>
		                        		<li><a class="botoneditar" href="ControladorUsuario?accion=editar&id=<%= us.getId_usuarioo()%>">Editar</a></li>
		                        		<li><a class="botonremover" href="ControladorUsuario?accion=eliminar&id=<%= us.getId_usuarioo()%>">Remover</a></li>
		                        	</ul>
	                        	</div>
	                        </td>
	                    </tr>
	                </tbody>
                        <%}%>
	            </table>
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
