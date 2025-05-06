<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header -->
<header class="header">
	<div class="navbar-area">
		<div class="container-md">
			<nav class="navbar navbar-expand-lg">
				<div class="container-fluid">
					<a class="navbar-brand logo"
						href="${pageContext.request.contextPath}/index.jsp"> <img
						src="${pageContext.request.contextPath}/images/logos/main-logo.png"
						alt="RentMate" class="img-fluid" style="max-height: 50px;" />
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarContent">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/listings.jsp">Products</a>
							</li>

							<%
							if (session.getAttribute("user") != null) {
							%>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/booking.jsp">Orders</a>
							</li>
							<%
							}
							%>

							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/about.jsp">About</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/contact.jsp">Contact</a>
							</li>
						</ul>

						<!-- 🔍 Search form -->
						<form class="d-flex"
							action="${pageContext.request.contextPath}/search" method="get"
							style="max-width: 300px; width: 100%;">
							<div class="input-group w-100">
								<input class="form-control" style="border-color: #f87439;" type="search" name="query"
									placeholder="Search..." />
								<button class="btn btn-outline-secondary search-btn"
									type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</form>

						<!-- 👤 Auth buttons -->
						<ul class="navbar-nav ms-3">
							<%
							if (session.getAttribute("user") == null) {
							%>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/auth/login.jsp"> <i
									class="fa fa-sign-in-alt"></i> Login
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/auth/signup.jsp"> <i
									class="fa fa-user-plus"></i> Signup
							</a></li>
							<%
							} else {
							%>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/auth/logout.jsp"> <i
									class="fa fa-sign-out-alt"></i> Logout
							</a></li>
							<%
							}
							%>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</header>
