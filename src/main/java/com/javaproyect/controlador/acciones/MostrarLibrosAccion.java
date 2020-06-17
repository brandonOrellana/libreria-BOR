/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.controlador.acciones;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
public class MostrarLibrosAccion extends Accion{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse responce) {
        LibroRepository libroHelp = new LibroRepository();
            List<LibroRepository> listaDeLibros = libroHelp.buscarTodos();
            List<String> listaDeCategorias = libroHelp.buscarTodasLasCategorias();
            
            request.setAttribute("listaDeLibros", listaDeLibros);
            request.setAttribute("listaDeCategorias",listaDeCategorias);
             return ("MostrarLibros.jsp");
                
    }
    
}
