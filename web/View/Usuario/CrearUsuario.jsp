
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
<h1 class="text-info" >Registrar usuario</h1>

<form action="http://localhost:8080/ProyectoConstruccion/RegisterUserServlet" method="POST">
    <div class="container text-info ">
    <div class="col-2"></div> 
    <div class="col-8 shadow-lg p-3 mb-5 bg-white rounded">             
        <div for="example-text-input" class="form-group row">
            <label  class="col-2 col-form-label">Nombre</label>
            <div class="col-10">
                <input class="form-control" type="text" placeholder="Digite el nombre" name="TxtNombre" required>
            </div>
        </div>       
        <div class="form-group row ">
            <label for="example-number-input" class="col-2 col-form-label">Apellido</label>
            <div class="col-10">
                <input class="form-control" type="text" placeholder="Digite el Apellido" name="TxtApellido" required>
            </div>
        </div>          
        <div class="form-group row">
            <label for="example-tel-input" class="col-2 col-form-label">Telefono</label>
            <div class="col-10">
                <input class="form-control" type="text" placeholder="Digite Telefono" name="IntTelefono" required>
            </div>
         </div>              
        <div class="form-group row">
            <label for="example-email-input" class="col-2 col-form-label">Correo</label>
            <div class="col-10">
              <input class="form-control" type="email" placeholder="Digite el correo electronico" name="TxtCorreo" required>
            </div>
         </div>  
        <div class="form-group row ">
            <label for="example-text-input" class="col-2 col-form-label">Nombre de usuario</label>
            <div class="col-10">
                <input class="form-control" type="text" placeholder="Digite nombre de usuario" name="TxtLogin" required>
            </div>
        </div>       
        <div class="form-group row">
            <label for="example-password-input" class="col-2 col-form-label">Contraseña</label>
            <div class="col-10">
                <input class="form-control" type="password" placeholder="Digite Contraseña" name="TxtContrasena" required>
            </div>
        </div>
         <div class="form-group row ">
            <label for="inputState" class="col-2 col-form-label" required>Tipo de usuario</label>
             <div class="col-10">
                <select class="form-control" name="TxtTipo">
                  <option selected>Escoja una opción</option>
                  <option>Administrador</option>
                    <option>Asesor</option>
                    <option>Empleado cartera</option>
                </select>
             </div>    
        </div>
        
        <input type="submit" class="btn btn-info btn-lg btn-block" value="Crear">  
    </div>
    <div class="col-2"></div>
</div>
</form>
<jsp:include page="../Layout/footer.jsp" />