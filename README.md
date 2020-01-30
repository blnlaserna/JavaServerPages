# JavaServerPages
Las Java Servlet Pages (JSP) constituyen una tecnolog�a commplementar�a a los Servlets que acabamos de ver. 
Surgieron como respuesta a las Active Server Pages de Microsoft y permiten separar los bloques de HTML est�ticos 
de los din�micos generados por c�digo Java que se ejecuta en el servidor. En resumen permiten separar el c�digo de 
presentaci�n de la l�gica de programaci�n.
Simplificando, podemos afirmar que los Servlet son "HTML dentro de Java" y los JSP son "Java dentro de HTML". Son
tecnolog�as complementarias, en los modelos MVC (Modelo Vista Controlador) los Servlets se encargar�n de controlar
las peticiones, mientras que los JSP se encargar�n de generar la vista de la aplicaci�n.
Cuando un cliente solicita una p�gina .jsp, se ejecuta en el servidor el c�digo JSP de la p�gina, dando como 
resultado una p�gina HTML que se fusiona con el HTML original, generando una p�gina HTML de respuesta que ser� enviada
al cliente.