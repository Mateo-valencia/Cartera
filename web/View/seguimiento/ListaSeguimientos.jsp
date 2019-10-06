<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<br>
<h1>Listado Seguimientos</h1>
<div class="table-responsive " >
    <table class="table table-striped" >
        <thead>
    <tr>
      <th scope="col">#Nro Seguimiento</th>
      <th scope="col">#Nro Proceso</th>
      <th scope="col">Fecha</th>
      <th scope="col">Resultado</th>
      <th scope="col">Descripcion</th>
    </tr>
  </thead>
  <tbody>
      <%
          DbConnect db = new DbConnect();
          ResultSet Consulta = db.DB().executeQuery("SELECT * FROM SEGUIMIENTO WHERE INT_ID_PROCESO="+request.getParameter("nroproceso1"));
          while (Consulta.next()) {
      %>
    <tr>
      <th><%out.println(Consulta.getString("INT_ID_SEGUIMIENTO"));%></th>
      <td><%out.println(Consulta.getString("INT_ID_PROCESO"));%></td>
      <td><%out.println(Consulta.getString("FECHA"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_RESULTADO"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));%></td>     
    </tr>
    <%
          }
    %>
  </tbody>
    </table>
</div>
    
    <div class="text-center" class="btncitas">
        <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp'">Volver</button>
    </div>
    </br>
<jsp:include page="../Layout/footer.jsp" />