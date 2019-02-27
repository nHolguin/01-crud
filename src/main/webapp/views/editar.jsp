<%-- 
    Document   : editar
    Created on : 26/02/2019, 03:11:17 PM
    Author     : Nimrod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>
    </head>
    <body>
        <h1>Editar Producto</h1>
        <form action="productos" method="POST">
            <c:set var="producto" value="${producto}"></c:set>
            <input type="hidden" name="opcion" value="editar" />
            <input type="hidden" name="id" value="${producto.idProducto}" />
            <table border="1">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" size="50" value="${producto.nombreProducto}" /></td>
                </tr>
                <tr>
                    <td>Cantidad:</td>
                    <td><input type="text" name="cantidad" size="50" value="${producto.cantidadProducto}" /></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" size="50" value="${producto.precioProducto}" /></td>
                </tr>
            </table>
            <input type="submit" value="Guardar">
        </form>
    </body>
</html>
