# JavaServerPages
Las Java Servlet Pages (JSP) constituyen una tecnología commplementaría a los Servlets que acabamos de ver. 
Surgieron como respuesta a las Active Server Pages de Microsoft y permiten separar los bloques de HTML estáticos 
de los dinámicos generados por código Java que se ejecuta en el servidor. En resumen permiten separar el código de 
presentación de la lógica de programación.
Simplificando, podemos afirmar que los Servlet son "HTML dentro de Java" y los JSP son "Java dentro de HTML". Son
tecnologías complementarias, en los modelos MVC (Modelo Vista Controlador) los Servlets se encargarán de controlar
las peticiones, mientras que los JSP se encargarán de generar la vista de la aplicación.
Cuando un cliente solicita una página .jsp, se ejecuta en el servidor el código JSP de la página, dando como 
resultado una página HTML que se fusiona con el HTML original, generando una página HTML de respuesta que será enviada
al cliente.