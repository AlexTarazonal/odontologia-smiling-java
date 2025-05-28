<%-- include/sidebar_doctor.jsp --%>
<link href="${pageContext.request.contextPath}/doc_css/doc_index.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>

<nav style="background-color: #87AAB5; padding:1rem;">
  <div class="sidebar">
    <button class="btn" type="button"
            data-bs-toggle="collapse"
            data-bs-target="#docNav"
            aria-expanded="false"
            aria-controls="docNav">
      <i class="fa-solid fa-bars text-white"></i>
    </button>
    <div class="collapse show collapse-horizontal" id="docNav">
      <div class="enlaces d-flex flex-column">
        <a href="${pageContext.request.contextPath}/Doctor/doc_index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/Doctor/doctor_citas.jsp">Citas</a>
        <a href="${pageContext.request.contextPath}/Doctor/doctor_diagnostico.jsp">Diagnóstico</a>
        <a href="${pageContext.request.contextPath}/Doctor/doctor_disponibilidad.jsp">Disponibilidad</a>
        <a href="${pageContext.request.contextPath}/logout">Salir</a>
      </div>
    </div>
  </div>
</nav>
