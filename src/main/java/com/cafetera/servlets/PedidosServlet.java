package com.cafetera.servlets;

import com.cafetera.dao.PedidoDAO;
import com.cafetera.model.Pedido;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;

public class PedidosServlet extends HttpServlet {
    private PedidoDAO dao = new PedidoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<Pedido> pedidos = dao.listar();
            req.setAttribute("pedidos", pedidos);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/pedidos.jsp");
            dispatcher.forward(req, resp);
        } catch (Exception e) {
            resp.sendError(500, "Error al listar pedidos");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int idProductor = Integer.parseInt(req.getParameter("idProductor"));
            String clienteNombre = req.getParameter("clienteNombre");
            String productoCafe = req.getParameter("productoCafe");
            double cantidadKg = Double.parseDouble(req.getParameter("cantidadKg"));
            double precioUnitario = Double.parseDouble(req.getParameter("precioUnitario"));
            double totalPrecio = cantidadKg * precioUnitario;
            Timestamp fechaPedido = new Timestamp(System.currentTimeMillis());
            String estadoPedido = req.getParameter("estadoPedido");

            Pedido p = new Pedido();
            p.setIdProductor(idProductor);
            p.setClienteNombre(clienteNombre);
            p.setProductoCafe(productoCafe);
            p.setCantidadKg(cantidadKg);
            p.setPrecioUnitario(precioUnitario);
            p.setTotalPrecio(totalPrecio);
            p.setFechaPedido(fechaPedido);
            p.setEstadoPedido(estadoPedido);

            dao.crear(p);
            resp.sendRedirect("pedidos");
        } catch (Exception e) {
            resp.sendError(500, "Error al crear pedido");
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