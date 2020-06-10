<%-- 
    Document   : Add_producto
    Created on : 31/05/2020, 05:44:07 AM
    Author     : tonis
--%>

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
        <link rel="stylesheet" href="css/usuarioaddcss.css"/><link rel="stylesheet" href="url"/>
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
	<div class="Cont-Form">
            <h1>Agregar producto</h1>
            <div class="contf">
            	<form action="ControladorProducto2">
	                Nombre:<br>
                        <input type="text" name="txtNombre"><br>
                        Precio:<br>
                        <input type="text" name="txtPr"><br>
                        URL Imagen:<br>
                        <input type="text" name="txtURL"><br>
                        Caracteristicas :<br>
                        <input type="text" name="txtCr"><br>
                        Categoria:<br>
                        <input type="text" name="txtCg"><br>
	                <input type="submit" id="btnaddd" name="accion" value="Agregar">
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
