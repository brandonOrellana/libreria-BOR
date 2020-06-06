<%-- 
    Document   : Error
    Created on : 6 jun. 2020, 11:02:29
    Author     : Brandon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Errores</title>
    </head>
    <body>
        <h1>Ho no!</h1>
        Ha ocurrido un error en la aplicacion; 
                <%=exception.getMessage()%>
        Error interno
                <%=exception.getCause().getMessage()%>
    </body>
</html>
