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
public class BorrarLibroAccion extends Accion{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse responce) {
        String isbn=request.getParameter("isbn");
            LibroRepository libroHelp = new LibroRepository();
            libroHelp.setIsbn(isbn);
            libroHelp.borrar();
             return("MostrarLibros.do");
    }
    
}
