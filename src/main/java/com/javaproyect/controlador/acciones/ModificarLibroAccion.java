/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.controlador.acciones;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brandon
 */
public class ModificarLibroAccion extends Accion{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse responce) {
        String isbn = request.getParameter("isbn");
        String titulo = request.getParameter("titulo");
        String categoria = request.getParameter("categoria");
        LibroRepository libro = new LibroRepository(isbn, titulo, categoria);
        libro.salvar();
        return("MostrarLibros.do");
    }
    
}
