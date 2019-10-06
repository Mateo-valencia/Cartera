<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<br>
<h1>Nuevo Procesos Juridicos</h1>
<form action="http://localhost:8080/ProyectoConstruccion/NewProcessServlet" method="POST">
    <div class="row">
        <div class="form-group  col-md-2">
            <label for="factura">Nro Factura: </label>
            <input type="number" class="form-control" id="causa" aria-describedby="factura" placeholder="Nro de factura" name="factura">        
        </div>
        <div class="form-group col-md-10">
            <label for="tipo">Tipo de proceso:</label>
            <select class="form-control" id="etipoproceso" name="tipo">
                <option>Juridico</option>
                <option>Prejuridico</option>
            </select>
        </div>
    </div>
    <div class="form-group ">
            <label for="causa">Causa: </label>
            <textarea type="text" class="form-control" id="causa" rows="6" aria-describedby="causa" placeholder="Causa del proceso jurídico" name="causa"> </textarea>       
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="abogado">Nombre del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="abogado" name="abogado">        
        </div>
        <div class="form-group col-md-6" >
            <label for="telefono">Telefono del abogado: </label>
            <input type="number" class="form-control" id="abogado" aria-describedby="telefono" name="telefono">        
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-4">
            <label for="contacto">Contacto del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="contacto" name="contacto">        
        </div>

        <div class="form-group col-md-4">
            <label for="correo">Correo del abogado: </label>
            <input type="email" class="form-control" id="abogado" aria-describedby="correo" name="correo">        
        </div>
        <div class="form-group col-md-4">
            <label for="direccion">Direcion del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="direccion" name="direccion">        
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="nombrejuzgado">Nombre Del juzgado: </label>
            <input type="text" class="form-control" id="nombrejuzgado" aria-describedby="nombrejuzgado" name="nombrejuzgado">
        </div>
        <div class="form-group col-md-6">
            <label for="ubicacionjuzgado">Ubicacion Del juzgado </label>
            <input type="text" class="form-control" id="ubicacionjuzgado" aria-describedby="ubicacionjuzgado" name="ubicacionjuzgado">
        </div>
    </div>
    <div class="row">
        <button type="guardar" class="btn btn-primary col-md-2 boton" >Guardar</button>
    </div>
    <br>
</form>
<jsp:include page="../Layout/footer.jsp" />