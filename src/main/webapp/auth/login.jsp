<!-- For Login -->


<!-- Header jsp -->
<%@ include file="../includes/header.jsp"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - RentMate</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">

<!-- Custom header CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css">

<!-- Custom footer CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">

<style>
:root {
	--blue: #012060;
	--orange: #f87439;
	--lpurple: #F4F2FF;
	--purple: #6555cb;
	--lgrey: #6e657e;
	--white: #fff;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: 'Poppins', sans-serif;
	background-color: #f8f9fa;
}

.login-container {
	padding-top: 100px;
}
</style>


</head>
<body>

	<div class="container login-container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-5">
				<div class="card shadow rounded-4">
					<div class="card-body p-4">
						<h3 class="text-center mb-4">Login to RentMate</h3>

						<!-- Alert Messages -->
						<%
						String errorMsg = (String) request.getAttribute("errorMsg");
						String successMsg = (String) request.getAttribute("successMsg");
						if (errorMsg != null) {
						%>
						<div class="alert alert-danger alert-dismissible fade show"
							role="alert">
							<%=errorMsg%>
							<button type="button" class="btn-close" data-bs-dismiss="alert"
								aria-label="Close"></button>
						</div>
						<%
						} else if (successMsg != null) {
						%>
						<div class="alert alert-success alert-dismissible fade show"
							role="alert">
							<%=successMsg%>
							<button type="button" class="btn-close" data-bs-dismiss="alert"
								aria-label="Close"></button>
						</div>
						<%
						}
						%>

						<!-- Login Form -->
						<form action="${pageContext.request.contextPath}/LoginServlet"
							method="post" onsubmit="return validateLoginForm()">
							<div class="mb-3">
								<label for="email" class="form-label">Email address</label> <input
									type="email" class="form-control" id="email" name="email">
								<div class="invalid-feedback" id="emailError">Please enter
									a valid email address.</div>
							</div>

							<div class="mb-3">
								<label for="password" class="form-label">Password</label> <input
									type="password" class="form-control" id="password"
									name="password">
								<div class="invalid-feedback" id="passwordError">Password
									cannot be empty.</div>
							</div>

							<div class="d-grid">
								<button type="submit" class="btn text-white"
									style="background-color: #f87439;">Login</button>
							</div>

							<div class="mt-3 text-center">
								Don't have an account? <a
									href="${pageContext.request.contextPath}/auth/signup.jsp">Sign
									up here</a>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Basic JS validation -->
	<script>
		function validateLoginForm() {
			let isValid = true;

			const emailField = document.getElementById("email");
			const passwordField = document.getElementById("password");
			const emailError = document.getElementById("emailError");
			const passwordError = document.getElementById("passwordError");

			const email = emailField.value.trim();
			const password = passwordField.value.trim();

			const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

			// Email Validation
			if (!emailPattern.test(email)) {
				emailField.classList.add("is-invalid");
				emailError.style.display = "block";
				isValid = false;
			} else {
				emailField.classList.remove("is-invalid");
				emailError.style.display = "none";
			}

			// Password Validation
			if (password === "") {
				passwordField.classList.add("is-invalid");
				passwordError.style.display = "block";
				isValid = false;
			} else {
				passwordField.classList.remove("is-invalid");
				passwordError.style.display = "none";
			}

			return isValid;
		}
	</script>



	<!-- Footer jsp -->
	<%@ include file="../includes/footer.jsp"%>


</body>
</html>