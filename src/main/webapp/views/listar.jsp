<%-- 
    Document   : listar
    Created on : 26/02/2019, 03:10:52 PM
    Author     : Nimrod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Productos</title>
    </head>
    <body>
        <h1>Lista de Productos</h1>
        <table border="2">
            <tr>
                <td>Id</td>
                <td>Nombre</td>
                <td>Cantidad</td>
                <td>Precio</td>
                <td>Fecha Creaci&oacute;n</td>
                <td>Fecha Actualizaci&oacute;n</td>
            </tr>
            <c:forEach var="producto" items="${lista}">
                <tr>
                    <td><c:out value="${producto.idProducto}"></c:out></td>
                    <td><c:out value="${producto.nombreProducto}"></c:out></td>
                    <td><c:out value="${producto.cantidadProducto}"></c:out></td>
                    <td><c:out value="${producto.precioProducto}"></c:out></td>
                    <td><c:out value="${producto.fechaCrear}"></c:out></td>
                    <td><c:out value="${producto.fechaActualizar}"></c:out></td>
                    </tr>
            </c:forEach>
        </table>
    </body>
</html>
