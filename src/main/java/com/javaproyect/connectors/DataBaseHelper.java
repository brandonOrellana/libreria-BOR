/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.connectors;
import java.lang.reflect.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 *
 * @author Brandon
 */
public class DataBaseHelper<T> {
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/arquitecturajava?serverTimezone=UTC";
    private static final String USUARIO = "root";
    private static final String CLAVE = "";
    
    private Logger logger = LogManager.getLogger(DataBaseHelper.class);
    
    public int modificarRgistro(String consultaSQL){
        Connection conexion = null;
        Statement sentencia = null;
        int filasAfectadas = 0;
        
        try {
            Class.forName(DRIVER);
            conexion = DriverManager.getConnection(URL, USUARIO, CLAVE);
            sentencia = conexion.createStatement();
            filasAfectadas = sentencia.executeUpdate(consultaSQL);
        }catch(ClassNotFoundException e){
            logger.error("Error de acceso al drive"+e.getMessage());
            throw new DataBaseException("Clase no encontrada",e);
        }catch(SQLException e){
            logger.error("Error de sql"+e.getMessage());
            throw new DataBaseException("Error de SQL",e);
        }finally{
            if(sentencia != null){
                try {sentencia.close();} catch (SQLException e) {}
            }
            if (conexion != null) {
                try {conexion.close();} catch (SQLException e) {}
            }
        }
        return filasAfectadas;
    }
    
    public List<T> seleccionarRegistros(String consultaSQL,Class clase) {
            Connection conexion = null;
            Statement sentencia = null;
            ResultSet filas = null;
            
            List<T> listaDeObjetos=new ArrayList<T>();
            
            try {
                Class.forName(DRIVER);
                conexion = DriverManager.getConnection(URL, USUARIO, CLAVE);
                sentencia = conexion.createStatement();
                filas = sentencia.executeQuery(consultaSQL);
            
            while (filas.next()) {
                T objeto=(T) Class.forName(clase.getName()).newInstance();
                Method[] metodos=objeto.getClass().getDeclaredMethods();
                        for (int i=0;i<metodos.length;i++) {
                            if (metodos[i].getName().startsWith("set") ) {
                                metodos[i].invoke(objeto,
                                filas.getString(metodos[i].getName().substring(3)));
                            }
                            if (objeto.getClass().getName().equals("java.lang.String")) {
                                objeto=(T)filas.getString(1);
                            }
                        }
                listaDeObjetos.add(objeto);
                }
            } catch (Exception e) {
                System.out.println("Error al seleccionar registros" + e.getMessage());
            }
            finally {
                if (sentencia != null) {
                    try {sentencia.close();} catch (SQLException e) {}
                }
                if (conexion != null) {
                    try {conexion.close();} catch (SQLException e) {}
                }
                return listaDeObjetos;
            }
    }
}
