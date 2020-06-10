<%-- 
    Document   : Registrar_Admin
    Created on : 31/05/2020, 02:36:38 PM
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
        <title>Registar Administrador</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_inicio.css">
        <link rel="stylesheet" type="text/css" href="icomoon/style.css">
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
        <h4>Registrar Administrador</h4>
            <form action="InsertarAdmin" method="post">
                <input type="text" name="Name_Admin" id="Name_Admin" placeholder="Nombre" required minlength="1" maxlength="40" >
                <input type="text" name="ApPat_Admin" id="ApPat_Admin" placeholder="Apellido Paterno" required minlength="1" maxlength="40" >
                <input type="text" name="ApMat_Admin" id="ApMat_Admin" placeholder="Apellido Materno" required minlength="1" maxlength="40" >
                <input type="text" name="Correo_Admin" id="Correo_Admin" placeholder="Correo" required minlength="1" maxlength="40" >
                <input type="password" name="Contra_Admin" id="Contra_Admin" placeholder="Contraseña" required minlength="1" maxlength="40" >
                
                <input type="submit" class="botones" value="Registrar">  
            </form>
                        </div>
        <footer class="footer">
            <div>
                <h5>Copyright © 2020 WaiMai. Todos los derechos reservados.</h5>
            </div>
        </footer>
    </body>
</html>
