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
        <label for="causa">Nro Factura: </label>
        <input type="number" class="form-control" id="causa" aria-describedby="causa" placeholder="Nro de factura" name="factura">        
    </div>
    <div class="form-group">
        <label for="causa">Causa: </label>
        <input type="text" class="form-control" id="causa" aria-describedby="causa" placeholder="Causa del proceso jurídico" name="causa">        
    </div>
    <div class="form-group">
        <label for="tipoproceso">Tipo de proceso:</label>
        <select class="form-control" id="etipoproceso" name="tipo">
            <option>Juridico</option>
            <option>Prejuridico</option>
        </select>
    </div>
    <div class="form-group">
        <label for="causa">Nombre del abogado: </label>
        <input type="text" class="form-control" id="abogado" aria-describedby="abogado" name="abogado">        
    </div>
    <div class="form-group">
        <label for="causa">Contacto del abogado: </label>
        <input type="text" class="form-control" id="abogado" aria-describedby="contacto" name="contacto">        
    </div>
    <div class="form-group">
        <label for="causa">Telefono del abogado: </label>
        <input type="number" class="form-control" id="abogado" aria-describedby="telefono" name="telefono">        
    </div>
    <div class="form-group">
        <label for="causa">Correo del abogado: </label>
        <input type="email" class="form-control" id="abogado" aria-describedby="correo" name="correo">        
    </div>
    <div class="form-group">
        <label for="causa">Direcion del abogado: </label>
        <input type="text" class="form-control" id="abogado" aria-describedby="direccion" name="direccion">        
    </div>
    <div class="form-group">
        <label for="seguimiento">Nombre Del juzgado: </label>
        <input type="text" class="form-control" id="nombrejuzgado" aria-describedby="nombrejuzgado" name="nombrejuzgado">
    </div>
    <div class="form-group">
        <label for="seguimiento">Ubicacion Del juzgado </label>
        <input type="text" class="form-control" id="ubicacionjuzgado" aria-describedby="ubicacionjuzgado" name="ubicacionjuzgado">
    </div>
    <div class="form-group">
        <label for="seguimiento">Seguimiento: </label>
        <textarea class="form-control" id="seguimiento" rows="5" name="seguimiento"></textarea>
    </div>
    <div class="row"><button type="guardar" class="btn btn-primary">Guardar</button></div>
</form>
<jsp:include page="../Layout/footer.jsp" />