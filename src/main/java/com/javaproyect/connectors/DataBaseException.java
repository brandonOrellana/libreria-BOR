/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaproyect.connectors;

/**
 *
 * @author Brandon
 */
public class DataBaseException extends RuntimeException {
    private static final long serialVersionUID=1L;
    public DataBaseException(){
        super();
    }
    
    public DataBaseException(String message,Throwable cause){
        super(message, cause);
    }
    
    public DataBaseException(String message){
        super(message);
    }
    
    public DataBaseException(Throwable cause){
        super(cause);
    }
    
}
