<%-- 
    Document   : indexpj
    Created on : 22/09/2019, 12:11:10 PM
    Author     : Jojansantia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Procesos Juridicos</h1>
<form action="http://localhost:8080/ProyectoConstruccion/NewProcessServlet" method="POST">
    <div class="form-group">
        <label for="causa">Causa: </label>
        <input type="text" class="form-control" id="causa" aria-describedby="causa" placeholder="Causa del proceso jurídico" name="causa">        
    </div>
    <div class="form-group">
        <label for="tipoproceso">Tipo de proceso:</label>
        <select class="form-control" id="etipoproceso" name="tipo">
            <option>Jurídico</option>
            <option>Prejurídico</option>
        </select>
    </div>
    <div class="form-group">
        <label for="causa">Nombre del abogado: </label>
        <input type="text" class="form-control" id="abogado" aria-describedby="abogado" name="abogado">        
    </div>
    <div class="form-group">
        <label for="seguimiento">Seguimiento: </label>
        <textarea class="form-control" id="seguimiento" rows="5" name="seguimiento"></textarea>
    </div>
    <div class="row"><button type="guardar" class="btn btn-primary">Guardar</button></div>
</form>
<jsp:include page="../Layout/footer.jsp" />