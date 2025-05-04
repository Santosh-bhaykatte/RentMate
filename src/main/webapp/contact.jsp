<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="includes/header.jsp"%>
<!----------------------------------------------------------------->
<!-- contact.jsp: Home Page Structure -->
<!----------------------------------------------------------------->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | contact</title>

<!-- Google Poppins font -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom header CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css">

<!-- Custom footer CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">

<!-- Page-specific CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/contact.css">
</head>

</head>
<body
	style="background-image: url('${pageContext.request.contextPath}/images/banners/contact-us.png');">


	<section class="contact-section">
		<div class="container">
			<div class="row justify-content-space-around">
				<div class="col-md-5 contact-form-wrapper">
					<h2 style="color: #012060;">Get in touch</h2>

					<!-- Submission Message -->
					<%
					String status = request.getParameter("status");
					if ("success".equals(status)) {
					%>
					<div class="alert alert-success" role="alert">Your message
						was submitted successfully!</div>
					<%
					} else if ("error".equals(status)) {
					%>
					<div class="alert alert-danger" role="alert">Something went
						wrong. Please try again.</div>
					<%
					}
					%>


					<form class="contact-form" action="ContactServlet" method="post">
						<div class="mb-4">
							<label for="fullName" class="form-label">Name</label> <input
								type="text" class="form-control" id="fullName" name="name"
								placeholder="Your Full Name">
						</div>
						<div class="mb-4">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="Your Email Address">
						</div>
						<div class="mb-4">
							<label for="mobile" class="form-label">Mobile No.</label>
							<div class="input-group">
								<select class="form-select dial-code" id="dialCode">
									<option selected>+91</option>
									<option value="+1">+1</option>
								</select> <input type="tel" class="form-control" id="mobile"
									name="mobile" placeholder="Your Mobile Number">
							</div>
						</div>
						<div class="mb-4">
							<label for="message" class="form-label">Message</label>
							<textarea class="form-control" id="message" name="message"
								rows="4" placeholder="Your Message"></textarea>
						</div>
						<button type="submit" class="btn submit-btn">Submit</button>
					</form>
				</div>
				<div class="col-md-5 contact-info-wrapper">
					<div class="contact-info">
						<h3>GET IN TOUCH WITH US</h3>
						<p>Do you have any questions? Please do not hesitate to
							contact us directly. Our team will come back to you within a
							matter of hours to help you.</p>
						<div class="contact-info-box">
							<div class="info-item">
								<i class="fas fa-phone-alt"></i> <span>+91-9319866277</span>
							</div>
							<div class="info-item">
								<i class="fas fa-map-marker-alt"></i> <span>150 Udyog
									Vihar Phase 1, <br> Udyog Vihar, Sector 20, <br>
									Dange Chowk, Pune, India 411033
								</span>
							</div>
							<div class="info-item">
								<i class="fas fa-envelope"></i> <span>sales@rentmate.com</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<!-- Bootstrap JS and Popper (v5.x) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


	<script>
		window.addEventListener('scroll', function() {
			const navbar = document.querySelector('.navbar-area');
			if (window.scrollY > 10) {
				navbar.classList.add('scrolled');
			} else {
				navbar.classList.remove('scrolled');
			}
		});
	</script>

	<script>
		function validateContactForm() {
			const fullName = document.getElementById('fullName').value.trim();
			const email = document.getElementById('email').value.trim();
			const mobile = document.getElementById('mobile').value.trim();
			const message = document.getElementById('message').value.trim();
			const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			const mobileRegex = /^[0-9]{10}$/; // Basic 10-digit mobile number validation

			let isValid = true;
			let errorMessage = "";

			// Full Name Validation
			if (fullName === "") {
				errorMessage += "Please enter your full name.\n";
				isValid = false;
			}

			// Email Validation
			if (email === "") {
				errorMessage += "Please enter your email address.\n";
				isValid = false;
			} else if (!emailRegex.test(email)) {
				errorMessage += "Please enter a valid email address.\n";
				isValid = false;
			}

			// Mobile Number Validation
			if (mobile === "") {
				errorMessage += "Please enter your mobile number.\n";
				isValid = false;
			} else if (!mobileRegex.test(mobile)) {
				errorMessage += "Please enter a valid 10-digit mobile number.\n";
				isValid = false;
			}

			// Message Validation
			if (message === "") {
				errorMessage += "Please enter your message.\n";
				isValid = false;
			}

			if (!isValid) {
				alert(errorMessage);
			}

			return isValid; // Return true if the form is valid, false otherwise
		}

		// Attach the validation function to the form's submit event
		document.addEventListener('DOMContentLoaded', function() {
			const contactForm = document.querySelector('.contact-form'); // Select the form by its class
			if (contactForm) {
				contactForm.addEventListener('submit', function(event) {
					if (!validateContactForm()) {
						event.preventDefault(); // Prevent the form from submitting if validation fails
					}
				});
			}
		});
	</script>


	<!-- Footer jsp -->
	<%@ include file="includes/footer.jsp"%>

</body>
</html>