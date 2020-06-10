<%-- 
    Document   : Add_usuario
    Created on : 30/05/2020, 04:49:21 PM
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
            <h1>Agregar usuario</h1>
            <div class="contf">
            	<form action="ControladorUsuario">
	                Nombre:<br>
	                <input type="text" name="txtNombre"><br>
	                Apellido Paterno:<br>
	                <input type="text" name="txtAP"><br>
	                Apellido Materno:<br>
	                <input type="text" name="txtAM"><br>
	                Fecha de nacimiento:<br>
	                <input type="text" name="txtFN"><br>
	                Correo:<br>
	                <input type="text" name="txtCR"><br>
	                Contraseña:<br>
	                <input type="Password" name="txtCN"><br>
	                Direccion:<br>
	                <input type="text" name="txtDR"><br>
	                Codigo Postal<br>
	                <input type="text" name="txtCP"><br>
	                Telefono:<br>
	                <input type="text" name="txtTel"><br><br>
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
