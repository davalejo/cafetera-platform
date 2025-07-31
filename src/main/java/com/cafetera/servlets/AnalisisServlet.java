package com.cafetera.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

public class AnalisisServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/analisis.jsp");
        dispatcher.forward(req, resp);
    }
}