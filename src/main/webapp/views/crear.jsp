<%-- 
    Document   : crear
    Created on : 26/02/2019, 03:10:38 PM
    Author     : Nimrod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Producto</title>
    </head>
    <body>
        <h1>Crear Producto</h1>
        <form action="productos" method="POST">
            <input type="hidden" name="opcion" value="guardar" />
            <table border="1">
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" size="50" /></td>
                </tr>
                <tr>
                    <td>Cantidad:</td>
                    <td><input type="text" name="cantidad" size="50" /></td>
                </tr>
                <tr>
                    <td>Precio:</td>
                    <td><input type="text" name="precio" size="50" /></td>
                </tr>
            </table>
            <input type="submit" value="Crear">
        </form>
    </body>
</html>
