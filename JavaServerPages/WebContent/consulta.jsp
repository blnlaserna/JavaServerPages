<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Libros</title>
</head>
<body>
	<h1 align="center">Tienda Libros</h1>
	<h3>Elige autor(s):</h3>
	<form method="get">
		<input type="checkbox" name="autor" value="Alvaro Garcia">Alvaro Garcia
		<input type="checkbox" name="autor" value="Aleksa Vukotic">Aleksa Vukotic
		<input type="checkbox" name="autor" value="Giulio Zambon">Giulio Zambon
		<input type="submit" value="consulta">
	</form>
	<% 
	String[] autores = request.getParameterValues("autor");
	if (autores != null) {
	%>
	<%@ page import = "java.sql.*" %>
	<%
	//Paso 1: Cargar el driver JDBC
	Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	//Paso 2: Conectarse a la Base de Datos utilizando la clase Connection
	String userName="root";
	String password="1234";
	String url="jdbc:mysql://localhost/TiendaLibros?serverTimezone=UTC";
	Connection conn = DriverManager.getConnection(url,userName,password);
	//Paso 3: Crear sentencias SQL, utilizando objetos de tipo Statement
	Statement stmt = conn.createStatement();
	String sqlStr = "SELECT * FROM libros WHERE ";
	for (int i = 0;i < autores.length; i++) {
		sqlStr = sqlStr + "autor = '" + autores[i] + "'";
		if (i != autores.length - 1) {
			sqlStr += "OR ";
		}
	}
	sqlStr += "AND cantidad >0 ORDER BY precio DESC";
	// para depuración
	System.out.println("La consulta sql es " + sqlStr);
	//Paso 4: Ejecutar las sentencias SQL a través de los objetos Statement
	ResultSet rset = stmt.executeQuery(sqlStr);
	%>
	<hr>
		<table border=1 cellpadding=5>
			<tr>
				<th>Autor</th>
				<th>Titulo</th>
				<th>Precio</th>
				<th>Cantidad</th>
			</tr>
	<%
	//Paso 5: Procesar el conjunto de registros resultante utilizando ResultSet
	while (rset.next()) {
	%>
			<tr>
				<td><%= rset.getString("autor") %></td>
				<td><%= rset.getString("titulo") %></td>
				<td><%= rset.getString("precio") %></td>
				<td><%= rset.getString("cantidad") %></td>
			</tr>
	<%
	}
	%>
		</table>
	<%
	//Cierre de recursos
	rset.close();
	stmt.close();
	conn.close();
	}
	%>
	
</body>
</html>