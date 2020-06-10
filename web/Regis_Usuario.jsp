<%-- 
    Document   : Regis_Usuario
    Created on : 14/05/2020, 04:41:45 PM
    Author     : tonis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_regusu.css"><link>
        <link rel="stylesheet" type="text/css" href="icomoon/style.css">
	<script type="text/javascript" src="js/Regis_Usuari_js.js"></script>
    </head>
    <body>
	<header class="header">
		<div class="container titulo-nav-container">
			<a href="#" class="titulo">WAIMAI</a>
			<nav class="nav">
				<ul>
					<li><a href="index.jsp"><span class="icon-home3"></span> Inicio</a></li>
					<li><a href="#">Nosotros</a></li>
					<li><a href="#"><span class="icon-info"></span> Información</a></li>
					<li><a href="Inic_Ses.jsp"><span class="icon-cart"></span></a></li>
					<li><a href="Inic_Ses.jsp"><span class="icon-user"></span></a></li>
					<li><a href="Regis_Usuario.jsp"><span class="icon-user-plus"></span></a></li>
				</ul>
			</nav>
		</div>	
	</header>
	<div class="main">
            <<form action="RegistrarUsuario" method="post" >
	<div class="forregis">
		<div class="registr">Registro Cliente</div>
			<div class="A"><label id="name"><a>Nombre:</a></label></div>
			<div class="B"><label id="app"><a>A. Paterno:</a></label></div>
			<div class="C"><input type="text" id="boxname" maxlength="41" name="Nom_Usuario"  required="required" placeholder="Nombre" onkeypress="return validarn(event)"></div>
                        <div class="D"><input type="text" id="boxapp" maxlength="23" name="ApPat_Usuario" required="required" placeholder="Apellido Paterno" onkeypress="return validarn(event)"></div>
			<div class="E"><label id="apm"><a>A. Materno:</a></label></div>
			<div class="F"><input type="text" id="boxapm" maxlength="41" name="ApMat_Usuario" required="required" placeholder="Apellido Materno" onkeypress="return validarn(event)"></div>
			<div class="COR"><label id="correo">Correo:</label></div>
			<div class="CORBO"><input type="text" id="boxcor" required="required" name="Correo_Usuario" placeholder="example04@hotmail.com" onkeypress="return validarspace(event)"></div>
			<div class="CON"><label id="contraseña">Contraseña:</label></div>
			<div class="CONBO"><input type="Password" id="boxcon" required="required" name="Contra_Usuario" placeholder="12345" onkeypress="return validarspacec(event)"></div>
			<div class="I"><label id="date"><a>Fecha de Nacimiento:</a></label></div>
			<div class="J"><input type="text" id="boxdd" minlength="1" maxlength="2" name="FechaNac_Usuario_dd" required="required" placeholder="dd" onkeypress="return validardate(event)"></div>
			<div class="Z"><input type="text" id="boxdm" minlength="1" maxlength="2" name="FechaNac_Usuario_mm" required="required" placeholder="mm" onkeypress="return validardate(event)"></div>
			<div class="Y"><input type="text" id="boxdy" minlength="4" maxlength="4" name="FechaNac_Usuario_yyyy" required="required" placeholder="yyyy" onkeypress="return validardate(event)"></div>
			<div class="G"><label id="direccion"><a>Dirección:</a></label></div>
			<div class="H"><input type="text" id="boxdireccion" maxlength="50" name="Direccion_Usuario" required="required" placeholder="CALLE AGUSTIN LARA NO. 69-B"></div>
			<div class="M"><label id="cp"><a>Código Postal:</a></label></div>	
			<div class="N"><input type="text" id="boxcp" maxlength="5" name="CP_Usuario" required="required" placeholder="08499" onkeypress="return validarcp(event)"></div>			
			<div class="K"><label id="tel"><a>Teléfono:</a></label></div>
			<div class="L"><input type="text" id="boxtel" maxlength="10" name="Tel_Usuario" required="required" placeholder="5500000000" onkeypress="return validarcp(event)"></div>
                        <div class="Q"><input type="submit" id="butreg" value="Registrar" oinclick="validarall(event)" style="cursor:pointer;"></div>
                        <div class="R"><label id="prelog"><b>¿Ya tienes cuenta?</b></label></div>
			<div class="S"><a id="log" href="index.html" style="cursor:pointer;">Inicia Sesión</a></div>
    </div>
                        </form>

        </div>
	<footer class="footer">
		<div>
			<h5>Copyright © 2020 WaiMai. Todos los derechos reservados.</h5>
		</div>
	</footer>
    </body>
</html>
