package com.cafetera.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class PagosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/pagos.jsp");
        dispatcher.forward(req, resp);
    }
}