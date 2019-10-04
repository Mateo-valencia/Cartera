<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<jsp:include page="Layout/header.jsp" /> 

<br><br>

<div class="card-deck ">
  <div class="card border-light">
    <a href="Cliente/indexcl.jsp">
        <img src="../Imagenes/cliente.png" class="card-img-top" alt="...">
    </a>
    <div class="card-body">
      <h5 class="card-title">Clientes</h5>
      <p class="card-text">Este modulo, podra tener un listado de cada uno de los cleintes con sus datos correspondeintes, que se encuentran registrados en el sistema.</p>
    </div>
  </div>
    <div class="card border-light">
      <a href="Cliente/indexcl.jsp">
          <img src="../Imagenes/cita.png" style="width: 80px; height:80px;" class="card-img-top" alt="...">
      </a>
    <div class="card-body">
      <h5 class="card-title">Citas</h5>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
  </div>
  <div class="card border-light">
    <a href="Cliente/indexcl.jsp">
        <img src="../Imagenes/reporte.png" class="card-img-top" alt="..."> 
    </a>
    <div class="card-body">
      <h5 class="card-title">Reportes</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
  </div>
</div>

<br>
<br>

<jsp:include page="Layout/footer.jsp" />