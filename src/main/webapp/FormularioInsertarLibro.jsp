<%-- 
    Document   : FormularioInsertarLibro
    Created on : 2 jun. 2020, 09:21:05
    Author     : Brandon
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>
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
    
        <form id="formularioInsercion" action="InsertarLibro.do" onsubmit="return validacion();">
            <fieldset>
                <legend>Formulario alta libro</legend>
                <p>
                    <label for="isbn">ISNB:</label>
                    <input id="isbn" type="text" name="isbn">
                </p>
                    
                <p>
                    <label for="titulo">Titulo:</label>
                    <input id="titulo" type="text" name="titulo">
                </p>
                    
                <p>
                    <label for="categoria">Categoria</label>
                    
                    <select name ="categoria">
                        <%
                            
                          //List<String> listaDeCategorias=null;
                          //LibroRepository libro = new LibroRepository();
                          //listaDeCategorias = libro.buscarTodasLasCategorias();
                          List<String> listaDeCategorias = null;
                        listaDeCategorias = (List<String>) request.getAttribute("listaDeCategorias");
                        
                         // List<String> listaDeCategorias =(List<String>) request.getAttribute("listaDeCategorias");
                          for(String categoria:listaDeCategorias){%>
                          <option value="<%=categoria%>"><%=categoria%></option>
                          <%}%>
                    </select>
                </p>
                    
                <input type="submit" value="Insertar">
            </fieldset>
        </form>
    
    
</html>