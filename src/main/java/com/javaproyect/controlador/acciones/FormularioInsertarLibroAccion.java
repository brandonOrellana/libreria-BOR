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
public class FormularioInsertarLibroAccion extends Accion{

    @Override
    public String ejecutar(HttpServletRequest request, HttpServletResponse responce) {
      List<String> listaDeCategorias=null;
            LibroRepository libroHelp = new LibroRepository();
            listaDeCategorias=libroHelp.buscarTodasLasCategorias();
            request.setAttribute("listaDeCategorias", listaDeCategorias);
            return("FormularioInsertarLibro.jsp");}
    
}
