<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" charset="utf-8" content="text/html">
        <title>Proyecto</title>       
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/ProyectoConstruccion/css/StyleAll.css">  
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">              
    </head>

    <body>       
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
               <a class="navbar-brand" href="http://localhost:8080/ProyectoConstruccion/View/Home.jsp"><i class="fa fa-suitcase" style="font-size: 30px;"></i> Menú</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>             
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Factura/indexf.jsp">Facturas</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cliente/indexcl.jsp">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp">Citas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp">Procesos Juridicos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Reporte/indexr.jsp">Reportes</a>
                        </li>                        
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Registros.jsp">Registros</a>
                        </li>
                    </ul>
                    <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/LoginServlet" method="get">                       
                        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">${sessionScope.nombre} ! <i class="fa fa-sign-out"></i></button>
                    </form>
                </div>
            </nav>    
           <div class="container">
              
                    
                        
                    
