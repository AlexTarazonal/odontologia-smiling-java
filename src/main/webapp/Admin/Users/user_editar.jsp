<%-- 
    Document   : user_editar
    Created on : 1 may 2025, 3:29:01 a.m.
    Author     : blant
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/Imagenes/icon.jpg">
        

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
        <jsp:useBean id="usuario" class="com.mycompany.test_1.models.Usuario" scope="session"></jsp:useBean>
        <jsp:setProperty name="usuario" property="id" param="usr"></jsp:setProperty>
        
    <center>
        <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form action="${pageContext.request.contextPath}/usuario/editar" method="post">
                    <h3>EDITAR</h3>
                    <input type="hidden" name="id" value="${usuario.id}">
                    Usuario: <b>${usuario.id}</b> 
                    <br>------
                    <br>
                    Password: <input type="text" class="form-control" name="password" value="${usuario.password}" required /><br>
                    Nombre: <input type="text" class="form-control" name="nombre" value="${usuario.nombre}" required /><br>
                    Tipo: <input type="text" class="form-control" name="tipo" value="${usuario.tipo}" required /><br>
                     
                   
                    <a href="${pageContext.request.contextPath}/usuario/list" class="btn btn-danger">Cancelar</a>
                    <input type="submit"  class="btn btn-success" value="Aceptar">
                </form>
            </div>
        </div>
    </center>
    </body>
</html>
