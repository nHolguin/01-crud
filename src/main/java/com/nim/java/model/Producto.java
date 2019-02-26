/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nim.java.model;

import java.sql.Date;

/**
 *
 * @author Nimrod
 */
public class Producto {
    
    private int idProducto;
    private String nombreProducto;
    private double cantidadProducto;
    private double precioProducto;
    private Date fechaCrear;
    private Date fechaActualizar;

    public Producto(int idProducto, String nombreProducto, double cantidadProducto, double precioProducto, Date fechaCrear, Date fechaActualizar) {
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.cantidadProducto = cantidadProducto;
        this.precioProducto = precioProducto;
        this.fechaCrear = fechaCrear;
        this.fechaActualizar = fechaActualizar;
    }

    public Producto() {
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public double getCantidadProducto() {
        return cantidadProducto;
    }

    public void setCantidadProducto(double cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }

    public double getPrecioProducto() {
        return precioProducto;
    }

    public void setPrecioProducto(double precioProducto) {
        this.precioProducto = precioProducto;
    }

    public Date getFechaCrear() {
        return fechaCrear;
    }

    public void setFechaCrear(Date fechaCrear) {
        this.fechaCrear = fechaCrear;
    }

    public Date getFechaActualizar() {
        return fechaActualizar;
    }

    public void setFechaActualizar(Date fechaActualizar) {
        this.fechaActualizar = fechaActualizar;
    }

    @Override
    public String toString() {
        return "Producto{" + "idProducto=" + idProducto + ", nombreProducto=" + nombreProducto + ", cantidadProducto=" + cantidadProducto + ", precioProducto=" + precioProducto + ", fechaCrear=" + fechaCrear + ", fechaActualizar=" + fechaActualizar + '}';
    }
    
}
