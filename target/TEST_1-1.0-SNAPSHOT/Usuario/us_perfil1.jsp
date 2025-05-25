<%-- 
    Document   : us_perfil
    Created on : 3 may 2025, 2:18:37 a.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="pe.edu.seg.Paciente" %>
<%@ page import="pe.edu.seg.Usuario" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Perfil</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
        <link rel="stylesheet" href="../Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="../Imagenes/icon.jpg">
        

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
        <jsp:useBean id="usuario" class="pe.edu.seg.Usuario" scope="session"></jsp:useBean>
        <jsp:setProperty name="usuario" property="id" param="usr"></jsp:setProperty>
        <jsp:scriptlet>
            usuario.ver();
        </jsp:scriptlet>
        
        
    <center>
        <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form action="../Admin/Users/user_procesa.jsp" method="post">
                    <h3>Mi perfil</h3>
                    <input type="hidden" name="accion" value="uso">
                    Usuario <br>
                    <input type="text" name="usr" class="form-control" disabled readonly
                           value="<jsp:getProperty name="usuario" property="id"></jsp:getProperty>">
                    Password <br>
                    <input type="text" name="psw"  class="form-control"
                           value="<jsp:getProperty name="usuario" property="password"></jsp:getProperty>">
                    Nombre <br>
                    <input type="text" name="nom"  class="form-control" 
                           value="<jsp:getProperty name="usuario" property="nombre"></jsp:getProperty>">
                    Tipo <br>
                    <input type="text" name="tpo"  class="form-control" disabled readonly
                           value="<jsp:getProperty name="usuario" property="tipo"></jsp:getProperty>">
                     <br>
                    
                    <a href="us_index.jsp" class="btn btn-danger">Cancelar</a>
                    <input type="submit"  class="btn btn-success" value="Siguiente">
                </form>
            </div>
        </div>
    </center>
    </body>
</html>