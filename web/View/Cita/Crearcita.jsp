<%-- 
    Document   : Crearcita
    Created on : 5/10/2019, 10:25:51 AM
    Author     : Jojansantia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />
<script src="http://localhost:8080/ProyectoConstruccion/js/citas.js"></script> 
<h1>Crear cita</h1>
<form action="http://localhost:8080/ProyectoConstruccion/CitaServlet?opc=1" method="POST" onsubmit="return validar();">

    <div class="form-group">
        <label >Id Usuario:</label>
        <input type="number" class="form-control" id="IdUsuario" name="IdUsuario" placeholder="" required>
        
    </div>

    <div class="form-group">
        <label >Id Cliente:</label>
        <input type="number" class="form-control" id="IdCliente" name="IdCliente" placeholder="" required>
        
    </div>
    <div class="form-group">
        <label >Fecha: </label>
        <input type="date"  class="form-control" id="fecha" name="fecha" required>
    </div>

    <div class="form-group">
        <label >Descripcion: </label>
        <textarea class="form-control" id="Descripcion" rows="5" name="Descripcion" required></textarea>
    </div>

    <div class="form-group">
        <label >Objetivo: </label>
        <textarea class="form-control" id="Objetivo" rows="2" name="Objetivo" required></textarea>
    </div>

    <div class="form-group">
        <label >Teléfono: </label>
        <input  class="form-control" id="telefono" min="0" max="20000000" name="telefono" placeholder="Número de telefono" required>      
    </div>

    <div class="form-group">
        <label >Correo: </label>
        <input type="email" class="form-control" name="correo" id="correo" placeholder="Example@example.com" required>      
    </div>

    <div class="form-group">
        <label >Estado:</label>
        <select class="form-control" id="estadocita" name="estadocita" required>
            <option>En espera</option>
            <option>En proceso</option>
            <option>Cancelada</option>
            <option>Finalizada</option>
        </select>
    </div>
    <div class="text-center" class="btncitas"> 
        <button type="guardar"  class="btn btn-primary btn-responsive btninter">Guardar</button>
    <button type="cancelar"  class="btn btn-secondary btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp'">Cancelar</button>
</div>

</form>
<jsp:include page="../Layout/footer.jsp" />
