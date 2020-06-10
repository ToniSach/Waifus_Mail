<%-- 
    Document   : carrito
    Created on : 18/05/2020, 05:00:13 PM
    Author     : tonis
--%>
<%@page import="Classes.Producto"%>
<%@page import="Controllers.ControladorProducto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Classes.Articulo"%>
<%
    HttpSession objsesionu = request.getSession(false);
    String Correo_Usuario =(String)objsesionu.getAttribute("Correo_Usuario");
    if  (Correo_Usuario.equals("")) {
            response.sendRedirect("Inic_Ses.jsp");
        }
    
     HttpSession sesion = request.getSession(true);
     ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
        <link rel="stylesheet" type="text/css" href="css/estilocarrito.css">
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
            <div class="Container-Tabla-Carrito">
                <table class="carrito" border="0" cellspacing="0">
                    <tr class="titulodelcarrito">
                        <th class="TProductoC">Producto</th>
                        <th class="TPrecioC">Precio</th>
                        <th class="TCantidadC">Cantidad</th>
                        <th class="TTotalC">Total</th>
                    </tr>
                    <%
                        ControladorProducto cp = new ControladorProducto();
                        double total = 0;
                        System.out.println("No entra a ninguno de los 2");
                        if(articulos != null){
                            System.out.println("Entró al if");
                        for(Articulo a: articulos){
                            System.out.println("Entró al for");
                            Producto producto = cp.getProducto(a.getIdProducto());
                            total += a.getCantidadP() * producto.getPrecio();
                                                        
                                                                                                            
                    %>
                    <tr>
                        <td class="productoprodcar">
                            <img src="<%= producto.getImagen()%>" width="100" height="140" class="imgproduct"> <a class="productnamecar"><%= producto.getNombreP()%></a>
                        </td>
                        <td class="productopreccar">$<%= producto.getPrecio()%></td>
                        <td class="productocantcar"><input type="number" value="<%= a.getCantidadP()%>" step="1" min="1" class="productcanticar"></td>
                        <td class="productototcar"><a class="preciocar"></a>$<%= Math.round(producto.getPrecio()*a.getCantidadP()*100.0) / 100.0%> <a href="#" class="Borrarproductcarr" >X</a></td>
                    </tr>
                    <%}}%>
                </table>
                <% if (articulos == null){%>
                <h4>No hay Articulos en el carro</h4>
                <%}%>
                <div class="Container-Boton-Comprar">
                    <ul>
                        <li><a href="AgregarCarrito" class="BotonComprar">Comprar</a></li>
                        <li><a href="" class="BotonRegresar">Seguir agregando cosas al carrito</a></li>
                    </ul>
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
