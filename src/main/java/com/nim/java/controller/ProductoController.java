/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nim.java.controller;

import com.nim.java.dao.ProductoDAO;
import com.nim.java.model.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nimrod
 */
@WebServlet(name = "ProductoController", urlPatterns = {"/productos"})
public class ProductoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductoController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductoController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String opcion = request.getParameter("opcion");
        if(opcion.equals("crear")) {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/crear.jsp");
            requestDispatcher.forward(request, response);
        }else if (opcion.equals("listar")){
            ProductoDAO productoDao = new ProductoDAO();
            List<Producto> lista = new ArrayList<>();
            
            try {
                lista = productoDao.obtenerProductos();
                request.setAttribute("lista", lista);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/listar.jsp");
                requestDispatcher.forward(request, response);
            }catch(SQLException e) {
                e.printStackTrace();
            }
        }else if(opcion.equals("meditar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            ProductoDAO productoDao = new ProductoDAO();
            Producto p = new Producto();
            
            try {
                p = productoDao.obtenerProducto(id);
                request.setAttribute("producto", p);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/editar.jsp");
                requestDispatcher.forward(request, response);
            }catch(SQLException e) {
                e.printStackTrace();
            }
        }else if (opcion.equals("eliminar")){
            ProductoDAO productoDao = new ProductoDAO();        
            int id = Integer.parseInt(request.getParameter("id"));
            
            
            try {
                productoDao.eliminar(id);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                requestDispatcher.forward(request, response);
            } catch(SQLException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String opcion = request.getParameter("opcion");
        Date fechaActual = new Date();
        
        if(opcion.equals("guardar")) {
            ProductoDAO productoDao = new ProductoDAO();
            Producto producto = new Producto();
        
            producto.setNombreProducto(request.getParameter("nombre"));
            producto.setCantidadProducto(Double.parseDouble(request.getParameter("cantidad")));
            producto.setPrecioProducto(Double.parseDouble(request.getParameter("precio")));
            producto.setFechaCrear(new java.sql.Date(fechaActual.getTime()));
            producto.setFechaActualizar(new java.sql.Date(fechaActual.getTime()));
        
            try {
                productoDao.guardar(producto);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                requestDispatcher.forward(request, response);
            }catch(SQLException e) {
                e.printStackTrace();
            }
        }else if(opcion.equals("editar")) {
            ProductoDAO productoDao = new ProductoDAO();
            Producto producto = new Producto();
        
            producto.setIdProducto(Integer.parseInt(request.getParameter("id")));
            producto.setNombreProducto(request.getParameter("nombre"));
            producto.setCantidadProducto(Double.parseDouble(request.getParameter("cantidad")));
            producto.setPrecioProducto(Double.parseDouble(request.getParameter("precio")));
            producto.setFechaActualizar(new java.sql.Date(fechaActual.getTime()));
        
            try {
                productoDao.editar(producto);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
                requestDispatcher.forward(request, response);
            } catch(SQLException e) {
                e.printStackTrace();
            }
            
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
