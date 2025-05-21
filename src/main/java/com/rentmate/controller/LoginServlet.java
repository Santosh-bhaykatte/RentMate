package com.rentmate.controller;

import java.io.IOException;

import jakarta.servlet.*;
/*import jakarta.servlet.annotation.WebServlet;*/
import jakarta.servlet.http.*;

import com.rentmate.dao.UserDAO;
import com.rentmate.model.User;
import com.rentmate.utils.DBConnection;

/*@WebServlet("/LoginServlet")*/
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserDAO dao = new UserDAO(DBConnection.getConnection());
		User user = dao.login(email, password);

		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			session.setAttribute("userId", user.getId()); // <--- This is the key line!
			System.out.println("User ID in session: " + session.getAttribute("userId"));	//----
			session.setAttribute("loginSuccess", "Logged in successfully!");
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
			request.setAttribute("errorMsg", "Invalid email or password");
			RequestDispatcher rd = request.getRequestDispatcher("auth/login.jsp");
			rd.forward(request, response);
		}
	}
}
