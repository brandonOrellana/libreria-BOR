<%-- 
    Document   : BorrarLibro
    Created on : 4 jun. 2020, 09:52:01
    Author     : Brandon
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaproyect.connectors.repositories.jdbc.LibroRepository"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Borrado</h1>
        
        
        <%
            String isbn=request.getParameter("isbn");
            LibroRepository libro = new LibroRepository();
            libro.setIsbn(isbn);
            libro.borrar();
            response.sendRedirect("MostrarLibro.jsp");
        %>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
