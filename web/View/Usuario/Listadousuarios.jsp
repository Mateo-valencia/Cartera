<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<h1>Listado Usuarios</h1>
<form action="CrearUsuario.jsp">
    <button  type="submit" class="btn btn-primary" style="margin-bottom: 12px;"/>
    <i class="fa fa-tasks"> Nuevo Usuario</i>
    </button>
</form>
<link rel="stylesheet" type="text/css" href="../../css/TableStyle.css">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Id Usuario</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido</th>
      <th scope="col">Tipo</th>
      <th scope="col">Login</th>
      <th scope="col">Telefono</th>
      <th scope="col">Correo</th>
    </tr>
  </thead>
  <tbody>
      <%
          DbConnect db = new DbConnect();
          ResultSet Consulta = db.DB().executeQuery("SELECT * FROM USUARIO");
          while (Consulta.next()) {
      %>
    <tr>
      <th><%out.println(Consulta.getString("INT_ID_USUARIO"));%></th>
      <td><%out.println(Consulta.getString("NVARCHAR_NOMBRE"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_APELLIDO"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_TIPO"));%></td>
      <td><%out.println(Consulta.getString("NVARCHAR_LOGIN"));%></td>
      <td><%out.println(Consulta.getString("INT_TELEFONO"));%></td>     
      <td><%out.println(Consulta.getString("NVARCHAR_CORREO"));%></td>     
    </tr>
    <%
          }
    %>
  </tbody>
</table>
