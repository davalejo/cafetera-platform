package com.cafetera.servlets;

import com.cafetera.dao.ProductorDAO;
import com.cafetera.model.Productor;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

public class ProductoresServlet extends HttpServlet {
    private ProductorDAO dao = new ProductorDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Productor> productores = dao.listar();
            req.setAttribute("productores", productores);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/productores.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            resp.sendError(500, "Error al listar productores");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String nombre = req.getParameter("nombre");
            String ubicacion = req.getParameter("ubicacion");
            String tipoCafe = req.getParameter("tipoCafe");
            String certificaciones = req.getParameter("certificaciones");
            Timestamp fechaRegistro = new Timestamp(System.currentTimeMillis());

            Productor p = new Productor();
            p.setNombre(nombre);
            p.setUbicacion(ubicacion);
            p.setTipoCafe(tipoCafe);
            p.setCertificaciones(certificaciones);
            p.setFechaRegistro(fechaRegistro);

            dao.crear(p);
            resp.sendRedirect("productores");
        } catch (Exception e) {
            resp.sendError(500, "Error al crear productor");
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Implementación opcional para editar desde AJAX o API REST
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Implementación opcional para eliminar desde AJAX o API REST
    }
}