package com.rentmate.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.rentmate.dao.ContactDAO;
import com.rentmate.model.ContactMessage;
import com.rentmate.utils.DBConnection;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String mobile = request.getParameter("mobile");
	    String message = request.getParameter("message");

	    ContactMessage cm = new ContactMessage(name, email, mobile, message);
	    ContactDAO dao = new ContactDAO(DBConnection.getConnection());

	    boolean result = dao.saveMessage(cm);

	    if (result) {
	        response.sendRedirect("contact.jsp?status=success");
	    } else {
	        response.sendRedirect("contact.jsp?status=error");
	    }
	}


}
