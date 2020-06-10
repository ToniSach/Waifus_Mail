<%-- 
    Document   : DetallesProductousu
    Created on : 31/05/2020, 11:59:45 AM
    Author     : tonis
--%>

<%@page import="Controllers.ControladorProducto"%>
<%@page import="Classes.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    HttpSession objsesionu = request.getSession(false);
    String Correo_Usuario =(String)objsesionu.getAttribute("Correo_Usuario");
    if  (Correo_Usuario.equals("")) {
            response.sendRedirect("Inic_Ses.jsp");
        }
    
    int id = Integer.parseInt(request.getParameter("id"));
    Producto producto = new ControladorProducto().getProducto(id);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles del producto</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_detallesP.css">
	<link rel="stylesheet" type="text/css" href="icomoon/style.css">
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
            <div class="Pre-Content-Details">
                <div class="Content-Details">
                    <img class="ImgDetailsProducto" src="<%= producto.getImagen()%>">
                    <div class="ContentTextDetails">
                        <p class="TituloProductosDetails"><%= producto.getNombreP()%></p>
                        <p class="CategoriaProductoDetails"><a class="CategoriaTD">Categoria:</a> <%= producto.getCategoria()%></p>
                        <form action="AgregarCarrito" method="post">
                        <p class="PrecioProductoDetails"><b>Mxn $<%= producto.getPrecio()%></b></p>
                        <p class="CantidadProductoDetails">Cantidad: <input type="number" class="CantidadProductosD" name="cantidadP" id="cantidadP" min="1" max="10" step="1" maxlength="2" value="1"></p>
                        <p class="DescripcionProductoDetails"><a class="DescripciónTD">Descripción:</a> <%=producto.getCaracteristicas()%></p>
                        <div class="botonesProductCompraD">
                            <ul>
                                <li><input type="hidden" name="idproducto" value="<%= producto.getId()%>"><button type="submit" class="btn btn-fefault cart">
										<span class="icon-cart"></span>
										Añadir
									</button></form></li>
                            </ul>
                        </div>
                    </div>
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
