<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup - RentMate</title>

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

.signup-container {
	max-width: 500px;
	margin: 140px auto;
	padding: 30px;
	background: white;
	border-radius: 12px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>

	<div class="container">
		<div class="signup-container">
			<h3 class="text-center mb-4">Create Your Account</h3>

			<!-- Show success message if registered -->
			<%
			String successMsg = (String) request.getAttribute("successMsg");
			String errorMsg = (String) request.getAttribute("errorMsg");

			if (successMsg != null) {
			%>
			<!-- Success Message and Login Button -->
			<div class="alert alert-success text-center"><%=successMsg%></div>
			<div class="text-center mt-2">
				<a href="${pageContext.request.contextPath}/auth/login.jsp"
					class="btn btn-primary">Go to Login</a>
			</div>
			<%
			} else {
			if (errorMsg != null) {
			%>
			<!-- Error Message -->
			<div class="alert alert-danger text-center"><%=errorMsg%></div>
			<%
			}
			%>

			<!-- Signup Form Only Shown When SuccessMsg is Null -->
			<form action="${pageContext.request.contextPath}/SignupServlet"
				method="post" onsubmit="return validateForm()">
				<div class="mb-3">
					<label for="fullName" class="form-label">Full Name</label> <input
						type="text" class="form-control" id="fullName" name="name"
						required>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Email</label> <input
						type="email" class="form-control" id="email" name="email" required>
				</div>

				<div class="mb-3">
					<label for="phone" class="form-label">Phone Number</label> <input
						type="tel" class="form-control" id="phone" name="phone"
						pattern="[0-9]{10}" required>
				</div>

				<div class="mb-3">
					<label for="password" class="form-label">Password</label>
					<div class="input-group">
						<input type="password" class="form-control" id="password"
							name="password" aria-describedby="togglePasswordBtn"
							minlength="6" required>
						<button class="btn btn-outline-secondary" type="button"
							id="togglePasswordBtn" tabindex="-1" onclick="togglePassword()">
							<i class="fa fa-eye" id="toggleIcon"></i>
						</button>
					</div>
				</div>


				<div class="d-grid">
					<button type="submit" class="btn text-white"
						style="background-color: #f87439;">Sign Up</button>
				</div>
			</form>
			<%
			} // end else
			%>


			<p class="text-center mt-3">
				Already have an account? <a
					href="${pageContext.request.contextPath}/auth/login.jsp">Login
					here</a>
			</p>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- Basic JS validation -->
	<script>
		function validateForm() {
			const name = document.getElementById("fullName").value.trim();
			const phone = document.getElementById("phone").value.trim();
			if (!/^[0-9]{10}$/.test(phone)) {
				alert("Enter a valid 10-digit phone number");
				return false;
			}
			if (name === "") {
				alert("Name cannot be empty");
				return false;
			}
			return true;
		}

		/* Password visible toggle */
		function togglePassword() {
			const passwordInput = document.getElementById("password");
			const icon = document.getElementById("toggleIcon");

			if (passwordInput.type === "password") {
				passwordInput.type = "text";
				icon.classList.remove("fa-eye");
				icon.classList.add("fa-eye-slash");
			} else {
				passwordInput.type = "password";
				icon.classList.remove("fa-eye-slash");
				icon.classList.add("fa-eye");
			}
		}
	</script>


	<!-- Footer jsp -->
	<%@ include file="../includes/footer.jsp"%>

</body>
</html>
