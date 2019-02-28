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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"
              <!-- Bootstrap CSS -->
              <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Lista de Productos</title>
    </head>
    <body>

        <div class="container">

            <div class="row">
                <div class="col-md-2 col-md-offset-2"></div>
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h1>Lista de Productos</h1>
                </div>
                <div class="col-md-2 col-md-offset-2 text-center">
                    <h2>
                        <a href="productos?opcion=regresar" class="btn btn-outline-success" data-toggle="tooltip" data-placement="bottom" title="Volver">
                            <i class="fas fa-angle-double-left"></i>
                        </a>
                    </h2>
                </div>
            </div>

            <div class="row justify-content-center">

                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <td><b>Nombre</b></td>
                            <td><b>Cantidad</b></td>
                            <td><b>Precio</b></td>
                            <td><b>Fecha Creaci&oacute;n</b></td>
                            <td><b>Fecha Actualizaci&oacute;n</b></td>
                            <td><b>Acci&oacute;n</b></td>
                        </tr>
                    </thead>
                    <c:forEach var="producto" items="${lista}">
                        <tr>
                            <td><c:out value="${producto.nombreProducto}"></c:out></td>
                            <td><c:out value="${producto.cantidadProducto}"></c:out></td>
                            <td><c:out value="${producto.precioProducto}"></c:out></td>
                            <td><c:out value="${producto.fechaCrear}"></c:out></td>
                            <td><c:out value="${producto.fechaActualizar}"></c:out></td>
                                <td>
                                    <a class="btn btn-info " href="productos?opcion=meditar&id=<c:out value="${producto.idProducto}"></c:out>" data-toggle="tooltip" data-placement="top" title="Editar"><i class="fas fa-edit"></i></a>
                                    <a class="btn btn-danger" href="productos?opcion=eliminar&id=<c:out value="${producto.idProducto}"></c:out>" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="fas fa-trash-alt"></i></a>
                                </td>
                            </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            $(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </body>

</body>
</html>
