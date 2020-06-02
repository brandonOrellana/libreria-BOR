<%-- 
    Document   : FormularioInsertarLibro
    Created on : 2 jun. 2020, 09:21:05
    Author     : Brandon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
    <head>
        <link rel="stylesheet" type="text/css" href="css/formato.css" />
        <script type="text/javascript" src="js/validacion.js" >
        </script>
        <title>Formulario Libro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <legend>Formulario alta libro</legend>
    <form action="InsertarLibro.jsp" onsubmit="return validacion();">
            <fieldset>
                <p><label for="isbn">ISNB:</label>
                    <input id="isbn" type="text" name="isbn"></p>
                    
                <p><label for="titulo">Titulo:</label>
                    <input id="titulo" type="text" name="titulo"></p>
                    
                <p><label for="categoria">Categoria</label>
                    <input id="categoria" type="text" name="categoria"></p>
                <input type="submit" value="Insertar">
            </fieldset>
        </form>
    
    
</html>