<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>

<!DOCTYPE html>
<% MetierVarietes metier = new MetierVarietes();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

 
<title>Nuceus 0.1</title>
</head>
<body>
	<h1>Liste des variétés de Noix</h1>
	<hr />
			<%
					List<Variete> varietes = metier.consulter();
			%>
	<table  border="1" style="style-collapse:collapse">
		<thead>
			<tr>
					<th>Libellé</th>
					<th>AOC</th>
			</tr>
		</thead>
		<tbody>
			<%
					for(Variete variete : varietes){
			%>
			<tr>
					<td><%=variete.getLibelle() %></td>
					<td><%=variete.isAoc() %></td>
			</tr>
			<%
					}
			%>
			
			
   				
			
			
		
		
		</tbody>
	
	</table>

</body>
</html>