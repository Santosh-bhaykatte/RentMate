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
<body>


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
	

<!-- Footer jsp -->
	<%@ include file="includes/footer.jsp"%>

</body>
</html>