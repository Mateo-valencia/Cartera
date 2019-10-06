<%-- 
    Document   : indexc
    Created on : 22/09/2019, 10:43:59 AM
    Author     : Jojansantia
--%>

<%@page import="java.sql.ResultSet"%>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />


<h1>Listado Citas</h1>

<form action="http://localhost:8080/ProyectoConstruccion/View/Cita/Crearcita.jsp">
    <button class="btn btn-primary"  type="submit" style="margin-bottom: 8px;" >Crear nueva cita</button></hr>  
</form>
<link rel="stylesheet" type="text/css" href="../../css/TableStyle.css"> 

<table style="width:100%">
    <thead>
    <tr>
        <th>IdCita</th>
        <th>IdCliente</th>
        <th>IdUsuario</th>
        <th>Fecha</th>
        <th>Descripcion</th>
        <th>Objetivo</th>
        
        <th>Telefono</th>
        <th>Correo</th>
        <th>Estado</th>
        
    </tr>
    </thead>
    <tbody>
    <%
        DbConnect db = new DbConnect();
        ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_CITAS,INT_ID_CLIENTE,INT_ID_USUARIO,DATETIME_FECHA,NVARCHAR_DESCRIPCION,NVARCHAR_OBJETIVO,NVARCHAR_RESULTADO,INT_TELEFONO,NVARCHAR_CORREO FROM CITAS");
        while (Consulta.next()) {
    %>        
        <tr>
      <th><%out.println(Consulta.getString("INT_ID_CITAS"));%></th>
      <td><%out.println(Consulta.getString("INT_ID_CLIENTE"));%></td>
      <td><%out.println(Consulta.getString("INT_ID_USUARIO"));%></td>
      <td><%out.println(Consulta.getString("DATETIME_FECHA"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_OBJETIVO"));%></td>
      <td><%out.println(Consulta.getString("INT_TELEFONO"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_CORREO"));%></td>
      
      <td>     
          <div class="row">
              <div class="col-md">
                  <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/View/Cita/Estadocita.jsp" method="get">
                      <%out.println(Consulta.getString("NVARCHAR_RESULTADO"));%>
                      <input type="hidden" name="estado" id="estado" value="<%out.println(Consulta.getString("INT_ID_CITAS"));%>">
                      <button class="btn btn-primary my-2 my-sm-0" type="submit" data-toggle="tooltip" data-placement="top" title="Nuevo Seguimiento" onclick="myFunction()">
                                    <i class="fa fa-sign-out" style="color:black"></i>
                      </button>
                  </form>
              </div>
              
          </div>
      </td>
    </tr>
    <%
          }
    %>
    </tbody>
</table></br>
<jsp:include page="../Layout/footer.jsp" />

