<%-- 
    Document   : shopAdmin
    Created on : 31/05/2020, 12:18:22 PM
    Author     : tonis
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Producto"%>
<%@page import="Models.ModeloProducto"%>
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
        <title>Inicio</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_inicio.css">
        <link rel="stylesheet" type="text/css" href="icomoon/style.css">
        <script type="text/javascript" src="js/validacion.js"></script>
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
			<aside class="menu">
				<ul>
					<h3><span class="icon-menu"></span> Menú</h3>
					<li><h4><a href="">Mukuchi</a></h4></li>
					<li><h4><a href="">Tsundere</a></h4></li>
					<li><h4><a href="">Meganekko</a></h4></li>
					<li><h4><a href="">Dojikko</a></h4></li>
					<li><h4><a href="">Yangire</a></h4></li>
					<li><h4><a href="">Bifauxnen</a></h4></li>
					<li><h4><a href="">Genki Girl</a></h4></li>
					<li><h4><a href="">Loli</a></h4></li>
					<li><h4><a href="">Bokukko</a></h4></li>
					<li><h4><a href="">Kimokawaii</a></h4></li>
					<li><h4><a href="">Nekogirl</a></h4></li>
					<li><h4><a href="">Sukeban</a></h4></li>
				</ul>
			</aside>
			<article class="Container-Productos">
                <%

                        ModeloProducto mp = new ModeloProducto();
                        ArrayList <Producto> lista = mp.getAllProductos();
                        for(Producto p : lista){
                        
                %> 
                <div class="ProductoShow"> 
                    <form action="AgregarCarrito" method="post">
                    <img src="<%=p.getImagen()%>" width="245" height="270">
                    <p class="PrecioProductoShow">Mxn $<%=p.getPrecio()%></p>
                    <p class="TituloProducto"><%=p.getNombreP()%></p>
                    <p class="CategoriaProductoShow"><a class="TCategoriaProductoShow">Categoria:</a><%=p.getCategoria()%></p>
                    <input type="hidden" class="CantidadProductosD" name="cantidadP" id="cantidadP" value="1">
                    <input type="hidden" name="idproducto" value="<%= p.getId()%>">
                    <div class="BtnAgregarAl">
                        <a href="#" class="AgregarCarritoBtn"><span class="icon-cart"></span> Agregar al carrito</a>
                    </form>
                        <a href="#" class="VerDetallesProduct">Ver detalles</a>
                    </div>
                </div>   
                <% 
                        }
                %>
                
            </article>
        </div>	
        <footer class="footer">
            <div>
                <h5>Copyright © 2020 WaiMai. Todos los derechos reservados.</h5>
            </div>
        </footer>
</body>
</html>
