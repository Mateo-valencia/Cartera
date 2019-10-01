<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<jsp:include page="Layout/header.jsp" />  
<center>
<div class="container">
    <div class="card" >
        <div class="face face1" style="background: #9ddff5">
            <div class="content">
                <img src="../Imagenes/cliente.png">
                <h3>Clientes</h3>
            </div>
        </div>
        <div class="face face2">
            <div class="content">
                <p>Este modulo, podra tener un listado de cada uno de los cleintes con sus datos correspondeintes, que se encuentran registrados en el sistema.</p>
                <a href="Cliente/indexcl.jsp">Consultar</a>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="face face1">
            <div class="content">
                <img src="../Imagenes/cita.png">
                <h3>Citas</h3>
            </div>
        </div>
        <div class="face face2">
            <div class="content">

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                <a href="#">Read more</a>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="face face1">
            <div class="content">
                <img src="../Imagenes/reporte.png">
                <h3>Reportes</h3>
            </div>
        </div>
        <div class="face face2">
            <div class="content">

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s</p>
                <a href="#">Read more</a>
            </div>
        </div>
    </div>
</div>
        <form action="uploadfile.jsp" method="post" enctype="multipart/form-data" >
            <table>
                <div class="row">
                    <div class="col-md-4">
                        <input type="file" name="file"/>                       
                    </div>
                    <div class="col-md-4">
                        <input type="submit" value="SUBIR ARCHIVO"/>
                    </div>
                </div>
            </table>
        </form>
</center>
<jsp:include page="Layout/footer.jsp" />