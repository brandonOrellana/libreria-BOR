<%-- 
    Document   : InsertarLibro
    Created on : 1 jun. 2020, 19:33:06
    Author     : Brandon
--%>

<%@page language="java" contentType ="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<% 
    String isbn = request.getParameter("isbn");
    String titulo = request.getParameter("titulo");
    String categoria = request.getParameter("categoria");
    
    Connection conexion = null;
    Statement sentencia = null;
    
    String url = "jdbc:mysql://localhost:3306/arquitecturajava?serverTimezone=UTC";
    String user = "root";
    String pass = "";
    
    int filas=0;
    try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url,user,pass);
            sentencia = conexion.createStatement();
            
            String consultaSQL = "insert into Libros (isbn,titulo,categoria) values";
            consultaSQL += "('" + isbn + "','" + titulo + "','" + categoria + "')";
            
            filas = sentencia.executeUpdate(consultaSQL);
            
            response.sendRedirect("MostrarLibro.jsp");
            
        } catch (ClassNotFoundException e) {
            System.out.println("Erroe en la carpeta drive"+e.getMessage());
        }catch(SQLException e){
            System.out.println("Error accediendo en la base de datos"+e.getMessage());
        }finally{
            if (sentencia != null) {
                try {
                    sentencia.close();
                }
                catch (SQLException e){
                System.out.println("Error cerrando la sentencia" +
                e.getMessage());
                }
            }
            if (conexion != null) {
                try {
                    conexion.close();
                }
                catch (SQLException e){
                System.out.println("Error cerrando la conexion" +
                e.getMessage());
                }
            }
    }
        
    %>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <h1>Insertar libos!</h1>
    </body>
</html>
