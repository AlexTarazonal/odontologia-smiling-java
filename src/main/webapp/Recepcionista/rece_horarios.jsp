<%-- 
    Document   : horarios
    Created on : 27 may. 2025, 23:18:32
    Author     : User
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html><html lang="es">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Horarios</title>
  <link rel="shortcut icon" href="../Imagenes/icon.jpg">
    <link rel="stylesheet" href="../Doctor/doc_css/doc_index.css">
    <link rel="stylesheet" href="rece_css/recepcionista.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <!--  -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="d-flex">
  <%@ include file="/Recepcionista/include/sidebar_recepcionista.jsp" %>
  <div class="logo">
    <img src="../Imagenes/icon.jpg" alt="Logo" class="rounded-circle" width="70">
    <span style="display: inline-block; vertical-align: middle;" class="fs-3">Smiling</span>
  </div>
  <div class="container p-4">
    <h2 class="mb-4">Tu Horario de Atención</h2>
    <ul class="list-group">
      <li class="list-group-item">Lunes: 9:00 – 18:00</li>
      <li class="list-group-item">Martes: 9:00 – 18:00</li>
      <li class="list-group-item">Miércoles: 9:00 – 18:00</li>
      <li class="list-group-item">Jueves: 9:00 – 18:00</li>
      <li class="list-group-item">Viernes: 9:00 – 18:00</li>
      <li class="list-group-item">Sábados: 9:00 – 14:00</li>
    </ul>
  </div>
</body>
</html>
