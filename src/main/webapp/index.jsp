<%-- 
    Document   : index
    Created on : 26/02/2019, 02:43:15 PM
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

        <title>INICIO - PRODUCTOS</title>
    </head>
    <body>
        
        <div class="container">
            <br />
            <div class="row">
                <div class="col-md-2 col-md-offset-2"></div>
                <div class="col-md-8 col-md-offset-2 text-center">
                    <img class="text-center" src="https://png.pngtree.com/element_origin_min_pic/17/03/19/0055b54129e9febe7ed347fecf3db27f.jpg" alt="lista productos" width="25%" />
                </div>
                <div class="col-md-2 col-md-offset-2"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2 col-md-offset-2"></div>
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h1>&iexcl;BIENVENIDO!</h1>
                </div>
                <div class="col-md-2 col-md-offset-2r"></div>
            </div>

            <br />
            <div class="row">
                <div class="col-md-2 col-md-offset-2"></div>
                <div class="col-md-8 col-md-offset-2 text-center">
                    <h3>Men&uacute; de Opciones</h3>
                </div>
                <div class="col-md-2 col-md-offset-2r"></div>
            </div>

            <br />
            <div class="row justify-content-center">     

                <div class="list-group">
                    <a href="productos?opcion=crear" class="list-group-item list-group-item-action list-group-item-info"><i class="fas fa-plus-circle"></i>&nbsp;&nbsp;&nbsp;Crear un Producto</a>
                    <a href="productos?opcion=listar" class="list-group-item list-group-item-action list-group-item-dark"><i class="fas fa-list-alt"></i>&nbsp;&nbsp;&nbsp;Listar Productos</a>
                </div>

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
