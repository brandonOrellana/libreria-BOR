/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.servlet;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
public class ControladorLibros extends HttpServlet{
    private static final long serialVersionUID = 1L;
   //@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        RequestDispatcher despachador = null;
        LibroRepository libro = new LibroRepository();
        List<LibroRepository> listaDeLibros = libro.buscarTodos();
        List<String> listaDeCategorias = libro.buscarTodasLasCategorias();
        
        request.setAttribute("listaDeLibros", listaDeLibros);
        request.setAttribute("listaDeCategorias",listaDeCategorias);
        
        despachador = request.getRequestDispatcher("MostrarLibros.jsp");
        despachador.forward(request, response);
        
    }
    
}
