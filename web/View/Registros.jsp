<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<jsp:include page="Layout/header.jsp" /> 

<br><br>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
       <div class="card mb-2">
            <img src="../Imagenes/registros.png" class="card-img-top" alt="...">
          <div class="card-body">
              
            <form action="uploadfile.jsp" method="post" enctype="multipart/form-data" >
                <div class="form-group">
                    <input type="file" class="form-control-file " id="file" name="file">
                </div>
                  <div class="form-group">
                      <input type="submit" class="form-control-file btn btn-dark" value="Subir Archivos">
                  </div>
            </form>
          </div>
        </div> 
    </div>
    <div class="col-md-2"></div>
</div>

<br><br>

<jsp:include page="Layout/footer.jsp" />
