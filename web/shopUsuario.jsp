<%-- 
    Document   : shopUsuario
    Created on : 31/05/2020, 10:56:55 AM
    Author     : tonis
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Producto"%>
<%@page import="Models.ModeloProducto"%>
<%@page import="Models.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession objsesionu = request.getSession(false);
    String Correo_Usuario =(String)objsesionu.getAttribute("Correo_Usuario");
    String Contra_Usuario =(String)objsesionu.getAttribute("Contra_Usuario");
    if  (Correo_Usuario.equals("")) {
            response.sendRedirect("Inic_Ses.jsp");
        }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_inicioo.css">
        <link rel="stylesheet" type="text/css" href="icomoon/style.css">
        <script type="text/javascript" src="js/validacion.js"></script>
    </head>
    <body>
        <header class="header">
		<div class="container titulo-nav-container">
			<a href="#" class="titulo">WAIMAI</a>
			<a href="#" class="saludo">Bienvenido <% out.print(Correo_Usuario);%></a>
			<nav class="nav">
				<ul>
					<li><a href="shopUsuario.jsp"><span class="icon-home3"></span> Inicio</a></li>
					<li><a href="">Nosotros</a></li>
					<li><a href=""><span class="icon-info"></span> Información</a></li>
					<li><a href="carrito.jsp"><span class="icon-cart"></span></a></li>
					<li><a href="">Historial</a></li>
					<li><a href="controladorsalirusu">Cerrar Sesión</a></li>
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
                    <p class="CategoriaProductoShow"><a class="TCategoriaProductoShow">Categoria:</a><%=p.getCategoria()%></p><br>
                    <input type="hidden" class="CantidadProductosD" name="cantidadP" id="cantidadP" value="1">
                    <input type="hidden" name="idproducto" value="<%= p.getId()%>">
                    <div class="BtnAgregarAl">
                        <button class="botonañadir" type="submit"><span class="icon-cart"></span>Añadir</button>
                    </form>
                        <a href="DetallesProductousu.jsp?id=<%=p.getId()%>" class="VerDetallesProduct">Ver detalles</a>
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
