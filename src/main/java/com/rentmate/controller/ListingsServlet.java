package com.rentmate.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

import com.rentmate.dao.ItemDAO;
import com.rentmate.model.Item;

@WebServlet("/listings")
public class ListingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. Fetch item list
		ItemDAO itemDAO = new ItemDAO();
		List<Item> itemList = itemDAO.getAllItems();

		// 2. Set as request attribute
		request.setAttribute("itemList", itemList);

		// 3. Forward to listings.jsp
		request.getRequestDispatcher("listings.jsp").forward(request, response);
	}
}
