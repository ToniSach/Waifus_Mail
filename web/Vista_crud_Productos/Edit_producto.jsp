<%-- 
    Document   : Edit_producto
    Created on : 31/05/2020, 05:44:38 AM
    Author     : tonis
--%>

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
        <link rel="stylesheet" href="css/usuarioeditcss.css"/><link rel="stylesheet" href="url"/>
    </head>
    <body>
        <%
                ProductoDAO dao = new ProductoDAO();
                int id=Integer.parseInt((String)request.getAttribute("idprod"));
                Producto p=(Producto)dao.listarprod(id);
                
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
            <h1>Editar producto</h1>
            <div class="cnt-ffff">
            <form action="ControladorProducto2">
                Nombre:<br>
                <input type="text" name="txtNombre" value="<%= p.getNombreP() %>"><br>
                Precio:<br>
                <input type="text" name="txtPr" value="<%= p.getPrecio() %>"><br>
                URL Imagen:<br>
                <input type="text" name="txtURL" value="<%= p.getImagen() %>"><br>
                Caracteristicas:<br>
                <input type="text" name="txtCr" value="<%= p.getCaracteristicas() %>"><br>
                Categoria:<br>
                <input type="text" name="txtCg" value="<%= p.getCategoria() %>"><br>
                <input type="hidden" name="txtId" value="<%= p.getId() %>"><br>
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
