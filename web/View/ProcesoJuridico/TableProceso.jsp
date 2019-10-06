<%-- 
    Document   : TableProceso
    Created on : 05-oct-2019, 18:34:20
    Author     : Mateo
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<h1>Listado Procesos juridicos</h1>
<form action="FormularioProcesojuridico.jsp">
    <button  type="submit" class="btn btn-primary" style="margin-bottom: 12px;"/>
    <i class="fa fa-tasks"> Nuevo Seguimiento</i>
    </button>
</form>
<link rel="stylesheet" type="text/css" href="../../css/TableStyle.css">   
<table style="width:100%">
  <tr>
    <th>Nro Proceso</th>
    <th>Nro Factura</th>
    <th>Causa</th>
    <th>Tipo de proceso</th>
    <th>Nombre del abogado</th>
    <th>Nombre del Juzgado</th>
     <th>Opciones</th>
  </tr>
    <%  
    DbConnect db = new DbConnect();
    ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.[TB_PROCCESOS]"); 
    int nro = 0;
        while(Consulta.next()) {  
            out.println("<tr>");
               out.println("<td>");
                    out.println(Consulta.getString("INT_ID_PROCESO"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("INT_ID_FACTURA"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_CAUSA"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_TIPO_PROCESO"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NOMBREABOGADO"));
               out.println("</td>");
               out.println("<td>");
                    out.println(Consulta.getString("NOMBREJUZGADO"));
               out.println("</td>");
               
               out.println("<td>");
                    out.println("<div class=\"row\">");
                        out.println("<div class=\"col-md\">");
                            out.print("<form class=\"form-inline my-2 my-lg-0\" action=\"http://localhost:8080/ProyectoConstruccion/View/seguimiento/indexs.jsp\" method=\"get\"> ");
                                out.println("<input type=\"hidden\" name=\"nroproceso\" id=\"nroproceso\" value=\"54\">");
                                %>
                                <script>
                                    function myFunction() {
                                      document.getElementById("nroproceso").value = <% out.println(Consulta.getString("INT_ID_PROCESO")); %>;
                                    }
                                </script>
                                <%
                                out.print("<button class=\"btn btn-primary my-2 my-sm-0\" type=\"submit\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Nuevo Seguimiento\" onclick=\"myFunction()\">");
                                    out.println("<i class=\"fa fa-sign-out\" style=\"color:black\">");
                                    out.println("</i>");
                                out.println("</button>");
                            out.print("</form>");
                        out.println("</div>");  

                        out.println("<div class=\"col-md\">");
                            out.print("<form class=\"form-inline my-2 my-lg-0\" action=\"http://localhost:8080/ProyectoConstruccion/View/seguimiento/indexs.jsp\" method=\"get\"> ");
                                out.print("<button class=\"btn btn-primary my-2 my-sm-0\" type=\"submit\" data-toggle=\"tooltip\" data-placement=\"top\" title=\"Seguimientos Actuales\">");
                                    out.println("<i class=\"fa fa-tasks\" style=\"color:black\">");
                                    out.println("</i>");
                                out.println("</button>");
                            out.print("</form>");
                        out.println("</div>");  


                    out.println("</div>");    
               out.println("</td>");
            out.println("</tr>");
        } 
    %>
 
</table>
    <br>