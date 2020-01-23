<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scriptlets JSP</title>
<%
	String bgColor = request.getParameter("bgColor");
	boolean hayColor;
	if (bgColor!=null) hayColor=true; else
	{
		hayColor=false;
		bgColor="WHITE";
	}
%>
</head>
<body BGCOLOR="<%=bgColor %>">
<h1>Ejemplo de scriptlets JSP</h1>
<%
if (hayColor) out.println("Se ha utilizado el color: " + bgColor);
else out.println("Se ha utilizado el color por defecto: WHITE");
%>
</body>
</html>