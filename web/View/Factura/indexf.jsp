<%-- 
    Document   : indexf
    Created on : 22/09/2019, 04:09:49 PM
    Author     : Jojansantia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Listado Facturas</h1>
<link rel="stylesheet" type="text/css" href="../../css/TableStyle.css">   
<table style="width:100%">
  <tr>
    <th>IdFactura</th>
    <th>Descripcion</th>
    <th>FechaGeneracion</th>
    <th>TipoCartera</th>
    <th>NombreDocumento</th>
  </tr>
    <%  
    DbConnect db = new DbConnect();
    ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_FACTURA,NVARCHAR_DESCRIPCION,DATETIME_FECHA_GENERACION,NVARCHAR_TIPO_CARTERA,NVARCHAR_NOMBRE_DOCUMENTO FROM FACTURA");    
        while(Consulta.next()) {  
            out.println("<tr>");
               out.println("<td>");
                    out.println(Consulta.getString("INT_ID_FACTURA"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("DATETIME_FECHA_GENERACION"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_TIPO_CARTERA"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_NOMBRE_DOCUMENTO"));
               out.println("</td>");
            out.println("</tr>");
        }   
    %>
</table>
    <br>
<jsp:include page="../Layout/footer.jsp" />