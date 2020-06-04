<%-- 
    Document   : SalvarLibro
    Created on : 4 jun. 2020, 11:37:59
    Author     : Brandon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>

<%
    String isbn = request.getParameter("isbn");
    String titulo = request.getParameter("titulo");
    String categoria = request.getParameter("categoria");
    LibroRepository libro = new LibroRepository(isbn,titulo,categoria);
    libro.salvar();
    response.sendRedirect("MostrarLibro.jsp");
    /*
    out.println(libro.getIsbn());
    
    out.println(libro.getTitulo());
    
    out.println(libro.getCategoria());*/
%>