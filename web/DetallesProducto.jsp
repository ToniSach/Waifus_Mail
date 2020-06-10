<%-- 
    Document   : DetallesProducto
    Created on : 17/05/2020, 11:57:51 PM
    Author     : tonis
--%>
<%@page import="Controllers.ControladorProducto"%>
<%@page import="Classes.Producto"%>
<% 
    int id = Integer.parseInt(request.getParameter("id"));
    Producto producto = new ControladorProducto().getProducto(id);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles del Producto</title>
        <link rel="stylesheet" type="text/css" href="css/estilo_detallesP.css">
	<link rel="stylesheet" type="text/css" href="icomoon/style.css">
    </head>
    <body>
        <header class="header">
            <div class="container titulo-nav-container">
                <a href="#" class="titulo">WAIMAI</a>
                <nav class="nav">
                    <ul>
                        <li><a href="index.jsp"><span class="icon-home3"></span> Inicio</a></li>
                        <li><a href="">Nosotros</a></li>
                        <li><a href="ControladorProducto2?accion=listarprod"><span class="icon-info"></span> Información</a></li>
                        <li><a href="carrito.jsp"><span class="icon-cart"></span></a></li>
                        <li><a href="Inic_Ses.jsp"><span class="icon-user"></span></a></li>
                        <li><a href="Regis_Usuario.jsp"><span class="icon-user-plus"></span></a></li>
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
                        <form action="Inic_Ses.jsp" method="post">
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
