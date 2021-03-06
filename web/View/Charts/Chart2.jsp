<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();

map = new HashMap<Object,Object>(); map.put("x", 10); map.put("y", 31); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 20); map.put("y", 65); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 30); map.put("y", 40); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 40); map.put("y", 84); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 50); map.put("y", 68); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 60); map.put("y", 64); list.add(map);
map = new HashMap<Object,Object>(); map.put("x", 70); map.put("y", 38); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Seguimientos"
	},
	data: [{
		type: "column", //change type to bar, line, area, pie, etc
		//indexLabel: "{y}", //Shows y value on all Data Points
		indexLabelFontColor: "#5A5757",
		indexLabelPlacement: "outside",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>