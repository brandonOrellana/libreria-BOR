/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.controlador;

import com.javaproyect.connectors.repositories.jdbc.LibroRepository;
import com.javaproyect.controlador.acciones.Accion;
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
        String url=request.getServletPath();
        Accion accion = Accion.getAccion(getNombreAccion(url));
        despachador = request.getRequestDispatcher(accion.ejecutar(request, response));
        despachador.forward(request, response);
    }
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
        doGet(request,response);
    } 
    
    private String getNombreAccion(String url){
        return url.substring(1,url.length()-3);
    }
}
