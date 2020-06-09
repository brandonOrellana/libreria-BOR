<%-- 
    Document   : MostrarLibros
    Created on : 1 jun. 2020, 21:48:03
    Author     : Brandon
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.javaproyect.connectors.DataBaseHelper"%>
<%@ page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Libros</title>
</head>
<body>
    <form name="filtroCategoria">
        <select name="categoria">
                <option value="seleccionar">seleccionar</option>
                <%

                        List<String> listaDeCategorias = null;
                        listaDeCategorias = (List<String>) request.getAttribute("listaDeCategorias");

                        for(String categoria:listaDeCategorias) { 
                            if(categoria.equals(request.getParameter("categoria"))){
                             %>
                                <option value="<%=categoria%>"selected><%=categoria%></option>
                             <%}else{%>
                                    <option value="<%=categoria%>"><%=categoria%></option>
                                <%}}%>
            </select><br>
            <input type="submit" value="filtrar">
    </form>
            

                <%
                //List<LibroRepository> listaDeLibros=null;
                //LibroRepository libroRepository2=new LibroRepository();
                //listaDeLibros= libroRepository.buscarTodos();
                List<LibroRepository> listaDeLibros = (List<LibroRepository>) request.getAttribute("listaDeLibros");
                for(LibroRepository libro:listaDeLibros){ %>
                    <%=libro.getIsbn()%>
                    <%=libro.getTitulo()%>
                    <%=libro.getCategoria()%>
                    <a href="BorrarLibro.jsp?isbn=<%=libro.getIsbn()%>">Borrar</a>
                    <a href="FormularioEditarLibro.jsp?isbn=<%=libro.getIsbn()%>">Editar</a>
                <br/>
<% }
%>
    
    <a href="FormularioInsertarLibro.jsp">Insertar Libro</a>
    </body></html>