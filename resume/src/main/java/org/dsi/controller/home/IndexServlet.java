package org.dsi.controller.home;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class IndexServlet extends HttpServlet {

    private static int visitCounter;

    @Override
    public void init() throws ServletException {
        visitCounter = 0;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        visitCounter++;

        request.setAttribute("visitCounter", visitCounter);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/front/home/index.jsp");
        requestDispatcher.forward(request, response);
    }
}
