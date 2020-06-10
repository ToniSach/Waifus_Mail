<%-- 
    Document   : Listar_productos
    Created on : 31/05/2020, 05:44:55 AM
    Author     : tonis
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Classes.Producto"%>
<%@page import="Models.ProductoDAO"%>
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
			<div class="content-tittab"><h1>Productos</h1></div>
			<div class="contentadd">
				<ul>
					<li><a href="ControladorProducto2?accion=addprod">Agregar nuevo</a></li>
				</ul>
			</div>
			<div class="tab">
	            <table border="1" cellspacing="0">
	                <thead>
	                    <tr>
	                        <th>Id</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>URL Imagen</th>
                                <th>Caracteristicas</th>
                                <th>Categoria</th>
                                <th>Acciones</th>
                                
	                    </tr>
	                </thead>
                        <%
                            ProductoDAO pdao = new ProductoDAO();
                            List<Producto> listprod = pdao.listarproducto();
                            Iterator<Producto> iter = listprod.iterator();
                            Producto pr = null;
                            while(iter.hasNext()){
                                pr = iter.next();


                        %>
	                <tbody>
	                    <tr>
	                        <td><%= pr.getId()%></td>
                                <td><%= pr.getNombreP()%></td> 
                                <td><%= pr.getPrecio()%></td>
                                <td><%= pr.getImagen()%></td>
                                <td><%= pr.getCaracteristicas()%></td>
                                <td><%= pr.getCategoria()%></td>
	                        <td>
	                        	<div class="edel">
	                        		<ul>
		                        		<li><a class="botoneditar" href="ControladorProducto2?accion=editar&id=<%= pr.getId()%>">Editar</a></li>
		                        		<li><a class="botonremover" href="ControladorProducto2?accion=eliminar&id=<%= pr.getId()%>">Remover</a></li>
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
