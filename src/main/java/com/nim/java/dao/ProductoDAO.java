/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nim.java.dao;

import com.nim.java.connection.Conexion;
import com.nim.java.model.Producto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nimrod
 */
public class ProductoDAO {
    
    private Connection connection;
    private PreparedStatement statement;
    private boolean estadoOperacion;
    
    //save product
    public boolean guardar(Producto producto) throws SQLException {
        String sql = null;
        estadoOperacion = false;
        connection = obtenerConexion();
        
        try {
            connection.setAutoCommit(false);
            sql = "INSERT INTO producto (id_producto,nombre_producto,cantidad_producto,precio_producto,fecha_crear,fecha_actualizar) VALUES (?,?,?,?,?,?)";
            statement = connection.prepareStatement(sql);
        
            statement.setString(1, null);
            statement.setString(2, producto.getNombreProducto());
            statement.setDouble(3, producto.getCantidadProducto());
            statement.setDouble(4, producto.getPrecioProducto());
            statement.setDate(5, producto.getFechaCrear());
            statement.setDate(6, producto.getFechaActualizar());
        
            estadoOperacion = statement.executeUpdate()>0;
        
            connection.commit();
            statement.close();
            connection.close();
        }catch(SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }
        
        return estadoOperacion;
    }
    
    //edit product
    public boolean editar(Producto producto) throws SQLException {
        String sql = null;
        estadoOperacion = false;
        connection = obtenerConexion();
        
        try {
            connection.setAutoCommit(false);
            sql = "UPDATE productos SET nombre_producto=?,cantidad_producto=?,precio_producto=?,fecha_actualizar=? WHERE id_producto=?";
            statement = connection.prepareStatement(sql);
        
            statement.setString(1, producto.getNombreProducto());
            statement.setDouble(2, producto.getCantidadProducto());
            statement.setDouble(3, producto.getPrecioProducto());
            statement.setDate(4, producto.getFechaActualizar());
            statement.setInt(5,producto.getIdProducto());
            
            estadoOperacion = statement.executeUpdate()>0;
        
            connection.commit();
            statement.close();
            connection.close();
        }catch(SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }
        
        return estadoOperacion;
    }
    
    //delete product
    public boolean eliminar(int idProducto) throws SQLException {
        String sql = null;
        estadoOperacion = false;
        connection = obtenerConexion();
        
        try {
            connection.setAutoCommit(false);
            sql = "DELETE FROM productos WHERE id_producto=?";
            statement = connection.prepareStatement(sql);
        
            statement.setInt(1,idProducto);
            
            estadoOperacion = statement.executeUpdate()>0;
        
            connection.commit();
            statement.close();
            connection.close();
        }catch(SQLException e) {
            connection.rollback();
            e.printStackTrace();
        }
        
        return estadoOperacion;
    }
    
    //get list
    public List<Producto> obtenerProductos() throws SQLException {
        ResultSet resultSet = null;
        List<Producto> listaProductos = new ArrayList<>();
        String sql = null;
        estadoOperacion = false;
        connection = obtenerConexion();
        
        try {
            connection.setAutoCommit(false);
            sql = "SELECT*FROM productos";
            resultSet = statement.executeQuery(sql);
            
            while(resultSet.next()) {
                Producto p = new Producto();
                p.setIdProducto(resultSet.getInt(1));
                p.setNombreProducto(resultSet.getString(2));
                p.setCantidadProducto(resultSet.getDouble(3));
                p.setPrecioProducto(resultSet.getDouble(4));
                p.setFechaCrear(resultSet.getDate(5));
                p.setFechaActualizar(resultSet.getDate(6));
                
                listaProductos.add(p);
            }
            
        }catch(SQLException e) {
            e.printStackTrace();
        }
        
        return listaProductos;
    }
    
    //get one product
    public Producto obtenerProducto(int idProducto) throws SQLException {
        ResultSet resultSet = null;
        Producto p = new Producto();
        String sql = null;
        estadoOperacion = false;
        connection = obtenerConexion();
        
        try {
            connection.setAutoCommit(false);
            sql = "SELECT*FROM productos WHERE id_producto=?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1,idProducto);
            
            resultSet = statement.executeQuery();
            
            if(resultSet.next()) {
                p.setIdProducto(resultSet.getInt(1));
                p.setNombreProducto(resultSet.getString(2));
                p.setCantidadProducto(resultSet.getDouble(3));
                p.setPrecioProducto(resultSet.getDouble(4));
                p.setFechaCrear(resultSet.getDate(5));
                p.setFechaActualizar(resultSet.getDate(6));
            }
            
        }catch(SQLException e) {
            e.printStackTrace();
        }
        
        return p;
    }
    
    //get connection
    private Connection obtenerConexion() throws SQLException {
        return Conexion.getConnection();
    }
    
}
