<%-- 
    Document   : pac_editar
    Created on : 1 may 2025, 1:24:36 p.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.test_1.models.Paciente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paciente</title>
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
        <jsp:useBean id="paciente" class="com.mycompany.test_1.models.Paciente" scope="session"></jsp:useBean>
        <jsp:setProperty name="paciente" property="id" param="id"></jsp:setProperty>
        <jsp:scriptlet>
            paciente.verPaciente();
        </jsp:scriptlet>
    <center>
        <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form action="pac_procesa.jsp" method="post">
                    <h3 class="mb-4">Editar Paciente</h3>

                    <input type="hidden" name="accion" value="editar">
                    <input type="hidden" name="id" value="<jsp:getProperty name="paciente" property="id"></jsp:getProperty>">

                    Nombre<br>
                    <input type="text" name="nombre" class="form-control"
                           value="<jsp:getProperty name="paciente" property="nombre"></jsp:getProperty>">
                    Sexo<br>
                    <input type="text" name="sexo" class="form-control"
                           value="<jsp:getProperty name="paciente" property="sexo"></jsp:getProperty>">
                    Teléfono<br>
                    <input type="text" name="telefono" class="form-control"
                           value="<jsp:getProperty name="paciente" property="telefono"></jsp:getProperty>">
                    Correo<br>
                    <input type="email" name="correo" class="form-control"
                           value="<jsp:getProperty name="paciente" property="correo"></jsp:getProperty>">
                    Estatus<br>
                    <input type="text" name="estatus" class="form-control"
                           value="<jsp:getProperty name="paciente" property="estatus"></jsp:getProperty>">

                    <a href="../ad_paciente.jsp" class="btn btn-danger">Cancelar</a>
                    <input type="submit" value="Guardar" class="btn btn-success">
                </form>
            </div>
        </div>
    </center>
    </body>
</html>

