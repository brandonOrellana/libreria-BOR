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
public class FormularioEditarLibroAccion extends Accion{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse responce) {
        String isbn=request.getParameter("isbn");
            LibroRepository libroHelp = new LibroRepository();
            List<String> listaDeCategorias = libroHelp.buscarTodasLasCategorias();
            LibroRepository libro = libroHelp.buscarPorClave(isbn);
            request.setAttribute("listaDeCategorias", listaDeCategorias);
            request.setAttribute("libro", libro);
            return("FormularioEditarLibro.jsp");
    }
    
}
