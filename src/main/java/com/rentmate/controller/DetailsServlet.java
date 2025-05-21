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

@WebServlet("/details")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. Check login
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("user") == null) {
			response.sendRedirect("auth/login.jsp");
			return;
		}

		// 2. Validate itemId
		String itemIdParam = request.getParameter("itemId");
		if (itemIdParam == null || itemIdParam.trim().isEmpty()) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return;
		}
		/* System.out.println("Received itemId: " + itemIdParam); */


		int itemId;
		try {
			itemId = Integer.parseInt(itemIdParam);
		} catch (NumberFormatException e) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return;
		}

		// 3. Fetch item from DAO
		ItemDAO itemDao = new ItemDAO();
		Item item = itemDao.getItemById(itemId);
		

		if (item == null) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			return;
		}

		// 4. Set attribute & forward
		request.setAttribute("item", item);
		RequestDispatcher dispatcher = request.getRequestDispatcher("details.jsp");
		dispatcher.forward(request, response);
	}
}
