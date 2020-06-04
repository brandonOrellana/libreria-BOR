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
    <select name="categoria">
        <option value="seleccionar">seleccionar</option>
        <%
            
                List<String> listaDeCategorias = null;
                LibroRepository libroRepository=new LibroRepository();
                listaDeCategorias = libroRepository.buscarTodasLasCategorias();
                
                for(String categoria:listaDeCategorias) { %>
                    <option value="<%=categoria%>"><%=categoria%></option>
                <% } %>
    </select><br>
   
                <%
                List<LibroRepository> listaDeLibros=null;
                //LibroRepository libroRepository2=new LibroRepository();
                //listaDeLibros= libroRepository.buscarTodos();
                
                    if(request.getParameter("categoria")==null || request.getParameter("categoria").equals("seleccionar")){
                        listaDeLibros=libroRepository.buscarTodos();
                    }else{
                        listaDeLibros=libroRepository.buscarPorCategoria(request.getParameter("categoria"));
                    }
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