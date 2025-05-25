<%-- 
    Document   : pac_procesa
    Created on : 1 may 2025, 1:24:55 p.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paciente</title>
    </head>
    <body>
        <jsp:useBean id="paciente" class="pe.edu.seg.Paciente" scope="session"></jsp:useBean>
        <jsp:scriptlet>
            String accion = request.getParameter("accion");
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String sexo = request.getParameter("sexo");
            String telefono=request.getParameter("telefono");
            String correo=request.getParameter("correo");
            String estatus=request.getParameter("estatus");

            if (accion.equals("nuevo")) {
                paciente.agregarPaciente(id, nombre,sexo,telefono,correo,estatus);
                response.sendRedirect("../ad_paciente.jsp");
            } else if (accion.equals("editar")) {
                paciente.actualizarPaciente(id, nombre,sexo,telefono,correo,estatus);
                response.sendRedirect("../ad_paciente.jsp");
            } else if (accion.equals("eliminar")) {
                paciente.eliminarPaciente(id);
                response.sendRedirect("../ad_paciente.jsp");
            }
        </jsp:scriptlet>
        
        
        
    </body>
</html>