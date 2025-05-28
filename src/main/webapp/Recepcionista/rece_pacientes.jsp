<%-- 
    Document   : pacientes
    Created on : 27 may. 2025, 23:18:55
    Author     : User
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="es">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pacientes</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="shortcut icon" href="../Imagenes/icon.jpg">
    <link rel="stylesheet" href="../Doctor/doc_css/doc_index.css">
    <link rel="stylesheet" href="rece_css/recepcionista.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->
  
</head>
<body class="d-flex">
   <%@ include file="/Recepcionista/include/sidebar_recepcionista.jsp" %>
   <div class="logo">
    <img src="../Imagenes/icon.jpg" alt="Logo" class="rounded-circle" width="70">
    <span style="display: inline-block; vertical-align: middle;" class="fs-3">Smiling</span>
  </div>
  <div class="container p-4">
    <h2 class="mb-4">Lista de Pacientes</h2>
    <table class="table table-hover">
      <thead>
        <tr>
          <th>#</th>
          <th>Nombre</th>
          <th>Teléfono</th>
          <th>Correo</th>
          <th>Acciones</th>
        </tr>
      </thead>
      <tbody>
        <!-- Aquí iteras sobre lista de pacientes pasada desde tu Servlet -->
        <tr>
          <td>1</td>
          <td>María López</td>
          <td>987654321</td>
          <td>maria@mail.com</td>
          <td><button class="btn btn-sm btn-info">Ver</button></td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>
