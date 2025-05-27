<%-- 
    Document   : doc_editar
    Created on : 2 may 2025, 11:16:06 p.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.test_1.models.Doctor" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
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
        <jsp:useBean id="doctor" class="com.mycompany.test_1.models.Doctor" scope="session"></jsp:useBean>
        <jsp:setProperty name="doctor" property="id" param="id"></jsp:setProperty>
        <jsp:scriptlet>
            doctor.verDoctor();
        </jsp:scriptlet>
    <center>
        <div class=" container col-md-4 justify-content-center my-5">
            <div class="d-flex align-items-center mb-4 justify-content-center gap-3">
                <form action="doc_procesa.jsp" method="post">
                    <h3 class="mb-4">Editar Doctor</h3>

                    <input type="hidden" name="accion" value="editar">
                    <input type="hidden" name="id" value="<jsp:getProperty name="doctor" property="id"></jsp:getProperty>">

                    Nombre<br>
                    <input type="text" name="nombre" class="form-control"
                           value="<jsp:getProperty name="doctor" property="nombre"></jsp:getProperty>">
                    Sexo<br>
                    <input type="text" name="sexo" class="form-control"
                           value="<jsp:getProperty name="doctor" property="sexo"></jsp:getProperty>">
                    Teléfono<br>
                    <input type="text" name="telefono" class="form-control"
                           value="<jsp:getProperty name="doctor" property="telefono"></jsp:getProperty>">
                    Correo<br>
                    <input type="email" name="correo" class="form-control"
                           value="<jsp:getProperty name="doctor" property="correo"></jsp:getProperty>">
                    Especialidad<br>
                    <input type="text" name="especialidad" class="form-control"
                           value="<jsp:getProperty name="doctor" property="especialidad"></jsp:getProperty>">

                    <a href="../doc_listado.jsp" class="btn btn-danger">Cancelar</a>
                    <input type="submit" value="Guardar" class="btn btn-success">
                </form>
            </div>
        </div>
    </center>
    </body>
</html>