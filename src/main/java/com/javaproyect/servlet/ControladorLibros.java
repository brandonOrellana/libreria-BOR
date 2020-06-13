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
        if(request.getServletPath().equals("/MostrarLibros.do")){
            LibroRepository libroHelp = new LibroRepository();
            List<LibroRepository> listaDeLibros = libroHelp.buscarTodos();
            List<String> listaDeCategorias = libroHelp.buscarTodasLasCategorias();
            
            request.setAttribute("listaDeLibros", listaDeLibros);
            request.setAttribute("listaDeCategorias",listaDeCategorias);
                despachador = request.getRequestDispatcher("MostrarLibros.jsp");
                
        }else if (request.getServletPath().equals("/FormularioInsertarLibro.do")){
            List<String> listaDeCategorias=null;
            LibroRepository libroHelp = new LibroRepository();
            listaDeCategorias=libroHelp.buscarTodasLasCategorias();
            request.setAttribute("listaDeCategorias", listaDeCategorias);
                despachador=request.getRequestDispatcher("FormularioInsertarLibro.jsp");
        
        }else if (request.getServletPath().equals("/BorrarLibro.do")){
            String isbn=request.getParameter("isbn");
            LibroRepository libroHelp = new LibroRepository();
            libroHelp.setIsbn(isbn);
            libroHelp.borrar();
                despachador=request.getRequestDispatcher("MostrarLibro.do");
                
        }else if(request.getServletPath().equals("/FormularioEditarLibro.do")){
            String isbn=request.getParameter("isbn");
            LibroRepository libroHelp = new LibroRepository();
            List<String> listaDeCategorias = libroHelp.buscarTodasLasCategorias();
            LibroRepository libro = libroHelp.buscarPorClave(isbn);
            request.setAttribute("listaDeCategorias", listaDeCategorias);
            request.setAttribute("libro", libro);
                despachador=request.getRequestDispatcher("FormularioEditarLibro.jsp");
                
        }else if(request.getServletPath().equals("/ModificarLibro.do")){
            String isbn = request.getParameter("isbn");
            String titulo = request.getParameter("titulo");
            String categoria = request.getParameter("categoria");
            LibroRepository libro = new LibroRepository(isbn, titulo, categoria);
            libro.salvar();
                despachador=request.getRequestDispatcher("MostrarLibros.do");
                
        }else if(request.getServletPath().equals("/InsertarLibro.do")){
            String isbn=request.getParameter("isbn");
            String titulo=request.getParameter("titulo");
            String categoria=request.getParameter("categoria");
            LibroRepository libroNuevo=new LibroRepository(isbn,titulo,categoria);
            libroNuevo.insertar();
                despachador = request.getRequestDispatcher("MostrarLibros.do");
                
        }else{//filtrar.do
            LibroRepository libroHelp = new LibroRepository();
            List<LibroRepository> listaDeLibros=null;
            List<String> listaDeCategorias = libroHelp.buscarTodasLasCategorias();
            if(request.getParameter("categoria")==null||request.getParameter("categoria").equals("seleccionar")){
                listaDeLibros= libroHelp.buscarTodos();
            }else{
                listaDeLibros = libroHelp.buscarPorCategoria(request.getParameter("categoria"));
            }
            request.setAttribute("listaDeLibros", listaDeLibros);
            request.setAttribute("listaDeCategorias", listaDeCategorias);
                despachador=request.getRequestDispatcher("MostrarLibros.jsp");
        }
        despachador.forward(request, response);
    }
    
}
