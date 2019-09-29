
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1 class="text-info" >Registrar Cliente</h1>

<div class="container text-info ">

    <div class="col-2">
      
    </div>
    <div class="col-8 shadow-lg p-3 mb-5 bg-white rounded">
        
        <div class="form-group row ">
            <label for="example-number-input" class="col-2 col-form-label">Documento</label>
            <div class="col-10">
              <input class="form-control" type="text" value="12345678" id="example-number-input">
            </div>
        </div>
        
        <div for="example-text-input" class="form-group row">
            <label  class="col-2 col-form-label">Nombre</label>
            <div class="col-10">
              <input class="form-control" type="text" value="pepito perez" id="example-text-input">
            </div>
        </div>    
            
        <div class="form-group row">
            <label for="example-tel-input" class="col-2 col-form-label">Telefono</label>
            <div class="col-10">
                <input class="form-control" type="text" value="555-555-5555" id="example-tel-input">
            </div>
         </div>    
            
        <div class="form-group row">
            <label for="example-email-input" class="col-2 col-form-label">Correo</label>
            <div class="col-10">
              <input class="form-control" type="email" value="asdf@example.com" id="example-email-input">
            </div>
         </div>
    
        
           <div class="form-group row ">
                <label for="inputState" class="col-2 col-form-label">Tipo de cliente</label>
                 <div class="col-10">
                    <select id="inputState" class="form-control">
                      <option selected>Escoja una opción</option>
                      <option>EPS</option>
                        <option>Caja de compensacion</option>
                        <option>Particular</option>
                    </select>
                 </div>    
              </div>
        <button type="button" class="btn btn-info btn-lg btn-block">Registrar</button>    
    </div>
    <div class="col-2">
     
    </div>
  
</div>
