<%-- 
    Document   : InsertarLibro
    Created on : 1 jun. 2020, 19:33:06
    Author     : Brandon
--%>

<%@page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>
<%@page language="java" contentType ="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaproyect.connectors.DataBaseHelper"%>
         
<% 
    String isbn = request.getParameter("isbn");
    String titulo = request.getParameter("titulo");
    String categoria = request.getParameter("categoria");
    LibroRepository libro = new LibroRepository(isbn,titulo,categoria);
    libro.insertar();
    response.sendRedirect("MostrarLibro.jsp");
%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <h1>Insertar libos!</h1>
    </body>
</html>
