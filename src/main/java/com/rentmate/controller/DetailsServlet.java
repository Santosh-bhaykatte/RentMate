package com.rentmate.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.rentmate.dao.ItemDAO;
import com.rentmate.model.Item;

/**
 * Servlet implementation class DetailsServlet
 */
@WebServlet("/details")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("auth/login.jsp");
            return;
        }

        // Get itemId from request
        String itemIdParam = request.getParameter("itemId");
        if (itemIdParam == null) {
            response.sendRedirect(request.getContextPath() + "/index.jsp"); // fallback
            return;
        }

        int itemId = Integer.parseInt(itemIdParam);

        // Fetch item details from DB using DAO
        ItemDAO itemDao = new ItemDAO();
        Item item = itemDao.getItemById(itemId);
        request.setAttribute("item", item);

        // Forward to details.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
        dispatcher.forward(request, response);
    }
}

