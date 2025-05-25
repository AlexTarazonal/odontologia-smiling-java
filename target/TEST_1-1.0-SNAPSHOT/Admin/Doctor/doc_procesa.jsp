<%-- 
    Document   : doc_procesa
    Created on : 2 may 2025, 11:16:28 p.m.
    Author     : blant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor</title>
    </head>
    <body>
        <jsp:useBean id="doctor" class="pe.edu.seg.Doctor" scope="session"></jsp:useBean>
        <jsp:scriptlet>
            String accion = request.getParameter("accion");
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String sexo = request.getParameter("sexo");
            String telefono=request.getParameter("telefono");
            String correo=request.getParameter("correo");
            String especialidad=request.getParameter("especialidad");

            if (accion.equals("nuevo")) {
                doctor.agregarDoctor(id, nombre,sexo,telefono,correo,especialidad);
                response.sendRedirect("../doc_listado.jsp");
            } else if (accion.equals("editar")) {
                doctor.actualizarDoctor(id, nombre,sexo,telefono,correo,especialidad);
                response.sendRedirect("../doc_listado.jsp");
            } else if (accion.equals("eliminar")) {
                doctor.eliminarDoctor(id);
                response.sendRedirect("../doc_listado.jsp");
            }
        </jsp:scriptlet>
        
        
        
    </body>
</html>