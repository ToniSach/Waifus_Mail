<%-- 
    Document   : Inic_Ses
    Created on : 14/05/2020, 04:42:32 PM
    Author     : tonis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_login.css">
        <link rel="stylesheet" type="text/css" href="icomoon/style.css">
	<script type="text/javascript" src="js/validacion.js"></script>
    </head>
    <body>
        <header class="header">
		<div class="container titulo-nav-container">
			<a href="#" class="titulo">WAIMAI</a>
			<nav class="nav">
                            <ul>
                                <li><a href="index.jsp"><span class="icon-home3"></span> Inicio</a></li>
                                <li><a href="">Nosotros</a></li>
                                <li><a href=""><span class="icon-info"></span> Información</a></li>
                                <li><a href="Inic_Ses.jsp"><span class="icon-cart"></span></a></li>
                                <li><a href="Inic_Ses.jsp"><span class="icon-user"></span></a></li>
                                <li><a href="Regis_Usuario.jsp"><span class="icon-user-plus"></span></a></li>
                            </ul>
			</nav>
		</div>	
	</header>
        <form action="InicioSesion" method="post">
            <div class="main">
	<div class="forlogin">
		<div class="login">Iniciar Sesión</div>
                
			<div class="A"><label id="user"><a>Usuario:</a></label></div>
                        <div class="B"><input type="text" id="boxuser" name="boxuser" maxlength="100" required="required" placeholder="user"></div>
			<div class="C"><label id="password"><a>Contraseña:</a></label></div>
                        <div class="D"><input type="Password" id="boxpass" name="boxpass" maxlength="50" required="required" placeholder="password"></div>
			<div class="E"><input type="submit" id="butlog" value="Ingresar" onclick="validarEmail(valor)" style="cursor:pointer;"></div>
		
                        <div class="F"><label id="prereg"><b>¿No tienes cuenta?</b></label></div>
			<div class="G"><a id="reg" href="regis.html" style="cursor:pointer;">Registrate</a></div>
	</div>
                </div>
        </form>
        <footer class="footer">
		<div>
			<h5>Copyright © 2020 WaiMai. Todos los derechos reservados.</h5>
		</div>
	</footer>
    </body>
</html>
