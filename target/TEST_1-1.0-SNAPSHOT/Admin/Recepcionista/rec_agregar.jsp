<%-- 
    Document   : rec_agregar
    Created on : 3 may 2025, 12:25:55 a.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="pe.edu.seg.Recepcionista" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recepcionista</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
        <link rel="stylesheet" href="../../Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="../../Imagenes/icon.jpg">
        

        <!--FUENTES-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <!--  -->
    </head>
    <style>
        body {
            margin: 0;
            height: 100vh; /* Asegura que el degradado cubra toda la pantalla */
            background: linear-gradient(to bottom, #ffffff, #B9D4DD, #87AAB5);
        }
    </style>
<body>
    <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form action="rec_procesa.jsp">
                    <h3>Agregar recepcionista</h3>
                    <input type="hidden" name="accion" value="nuevo">
                    ID <br>
                    <input type="text" name="id" class="form-control" required="true">
                    Nombre <br><!-- comment -->
                    <input type="nombre" name="nombre"  class="form-control" required="true">
                    Sexo <br>
                    <input type="sexo" name="sexo"  class="form-control" required="true"> 
                    Telefono <br>
                    <input type="telefono" name="telefono"  class="form-control" required="true"> 
                    Correo <br>
                    <input type="correo" name="correo"  class="form-control" required="true">
                    <br>
                    <a href="../rec_listado.jsp" class="btn btn-danger">Cancelar</a>
                    <input type="submit"  class="btn btn-success" value="Aceptar">
                </form>
            </div>
        </div>
</body>
</html>
