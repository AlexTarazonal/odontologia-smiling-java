<%-- 
    Document   : valida
    Created on : 26 abr. 2025, 4:52:22 p. m.
    Author     : Estudiante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="usuario" class="pe.edu.seg.Usuario" scope="session"></jsp:useBean>
        <jsp:setProperty name="usuario" property="id" param="usr"></jsp:setProperty>
        <jsp:setProperty name="usuario" property="password" param="psw"></jsp:setProperty>
        
        <jsp:getProperty name="usuario" property="id"></jsp:getProperty>
        <jsp:getProperty name="usuario" property="password"></jsp:getProperty>
        
        <jsp:scriptlet>
            int log = usuario.getLogueado();
            
            if (log != 0) {
            String tipo = usuario.getTipo(); // Ejemplo: "admin", "doctor", "empleado"

                if ("Administrador".equalsIgnoreCase(tipo)) {
                    response.sendRedirect("Admin/ad_index.jsp");
                } else if ("Doctor".equalsIgnoreCase(tipo)) {
                    response.sendRedirect("Doctor/doc_index.jsp");
                } else if ("Paciente".equalsIgnoreCase(tipo)) {
                    response.sendRedirect("Usuario/us_index.jsp");
                }else if ("Recepcionista".equalsIgnoreCase(tipo)){ 
                    response.sendRedirect("Recepcionista/rece_index.jsp");
                }else {
                    response.sendRedirect("index.jsp"); // En caso de rol no reconocido
                }
            } else {
                response.sendRedirect("index.jsp"); // Login incorrecto
            }
            /*if (log!=0) {
                response.sendRedirect("listado.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }*/
        </jsp:scriptlet>
</html>
