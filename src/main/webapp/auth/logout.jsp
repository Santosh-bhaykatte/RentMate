<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Invalidate the session to log out the user
session.invalidate();
session = request.getSession(true); // Create new session for message
session.setAttribute("logoutSuccess", "You have logged out successfully!");

// Redirect to home page (index.jsp)
response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
