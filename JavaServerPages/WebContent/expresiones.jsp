<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expresiones JSP</title>
</head>
<body>
<h1>Ejemplo de expresiones JSP</h1>
<ul>
<li>Fecha actual: <%=new java.util.Date() %>
<li>Nombre del host: <%=request.getRemoteHost() %>
<li>ID de la sesi�n: <%=session.getId() %>
<li>El par�metro es: <%=request.getParameter("nombre") %>
</ul>
</body>
</html>