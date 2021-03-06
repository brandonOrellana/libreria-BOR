<%-- 
    Document   : FormularioEditarLibro
    Created on : 4 jun. 2020, 10:45:45
    Author     : Brandon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>

<% 
    //LibroRepository libroHelper = new LibroRepository();
    //LibroRepository libro = libroHelper.buscarPorClave(request.getParameter("isbn"));
    LibroRepository libro =(LibroRepository) request.getAttribute("libro");
%>
<!DOCTYPE html>
<html>
    <script>
  addEventListener('DOMContentLoaded',inicio,false);

  function inicio(){
    document.getElementById('isbn').addEventListener('click',presion1,false);
  }
  function presion1(){
    alert('No se puede modificar el isbn , solucion a futuro');
  }
</script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edicion de Libro</h1>
        
        <form action="ModificarLibro.do" id="formularioEdicion" >
            <fieldset>
                <legend>Formulario alta libro</legend>
                <p>
                    <label for="isbn">ISBN:</label>
                    <input type="text" id="isbn" name="isbn" value="${libro.isbn}" readonly/>
                </p>
                
                <p>
                    <label for="titulo">Titulo</label>
                    <input type="text" id="titulo" name="titulo" value="${libro.titulo}"/>
                </p>
                
                <p>
                    <label for="categoria">Categoria</label>
                    <select name="categoria">
                        <c:forEach var="categoria" items="${listaDeCategorias}">
                            <option value="${categoria}">${categoria}</option>
                        </c:forEach>
                    </select>
                    <br/>
                </p>
                <p><input type="submit" value="Salvar" /></p>

            </fieldset>
        </form>
    </body>
</html>
