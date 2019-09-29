<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Proyecto</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/ProyectoConstruccion/css/style.css">
        
    </head>

    <body>
        <div id="container1">
            <!-- CABECERA -->
            <header id="header">
                <div id="logo">
                    <img src="http://localhost:8080/ProyectoConstruccion/Imagenes/logo.png"  />
                    <a href="../">
                        Gestion de Cartera
                    </a>
                </div>
            </header>
            <nav id="menu">
                <ul>
                    <li> 
                        <!--Los llamdos de los jsp se debn hacer con la doreccion completa, dado que todos funcionan con el mismo style y con los header y footer, de otra forma en algunos casos nunca encontrara la pagina especificada-->
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Home.jsp">Inicio</a>                       
                    </li>
                    <li>
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Cliente/indexcl.jsp">Cliente</a>                       
                    </li>
                    <li>
                        
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp">Cita</a>                       
                    </li>
                    <li>
                        <a href="http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp">Proceso Juridico</a>
                    </li>
                    <li>
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/indexr.jsp">Reporte</a>
                    </li>
                    <li>
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Factura/indexf.jsp">Factura</a>
                    </li>
                    <li>
                        <a href="http://localhost:8080/ProyectoConstruccion/View/Usuario/CrearUsuario.jsp">CrearUsuario</a>
                    </li>
                </ul>
                
                <div class="out">
                    <form action="http://localhost:8080/ProyectoConstruccion/LoginServlet" method="get">
                        <button class="Log_out" type="submit">Bienvenido ${sessionScope.nombre} ! <i class="fa fa-sign-out-alt"></i></button>
                    </form>
                </div>
                
            </nav>
            <div id="content">
                <div id="central">
