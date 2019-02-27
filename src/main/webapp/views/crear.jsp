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

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <title>Crear Producto</title>
    </head>
    <body>

        <div class="container">

            <div class="row">
                <div class="col-md-2 col-md-offset-2"></div>
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h1>Crear Producto</h1>
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
                
                <form action="productos" method="POST">
                    <br /><br />
                    <input type="hidden" name="opcion" value="guardar" />
                    <div class="form-group">
                        <label for="nombre">Nombre:</label>
                        <input type="text" class="form-control" name="nombre" id="nombre"  placeholder="Ingrese un producto...">
                        <small id="nombre" class="form-text text-muted">Ingrese el nombre de un producto v&aacute;lido.</small>
                    </div>
                    <div class="form-group">
                        <label for="cantidad">Cantidad:</label>
                        <input type="number" class="form-control" name="cantidad" id="cantidad"  placeholder="Ingrese la cantidad...">
                        <small id="cantidad" class="form-text text-muted">Ingrese la cantidad de unidades del producto.</small>
                    </div>
                    <div class="form-group">
                        <label for="precio">Precio:</label>
                        <input type="number" class="form-control" name="precio" id="precio"  placeholder="Ingrese el precio...">
                        <small id="precio" class="form-text text-muted">Ingrese el precio del producto.</small>
                    </div>
                    <button type="submit" class="btn btn-success">Crear</button>
                </form>
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
</html>
