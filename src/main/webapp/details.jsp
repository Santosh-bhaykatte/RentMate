<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.rentmate.model.Item"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Item Details</title>

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
	href="${pageContext.request.contextPath}/css/details.css">

</head>

<body>

	<%
	Item item = (Item) request.getAttribute("item");
	if (item == null) {
	%>
	<div class="container my-5">
		<h3 class="text-danger">Item not found.</h3>
	</div>
	<%
	} else {
	%>
	<div class="container d-container mt-1">
		<div class="row">
			<!-- Item Image -->
			<div class="col-md-5 mb-4 me-5 ms-1">
				<img src="<%=request.getContextPath() + "/" + item.getImagePath()%>"
					class="img-fluid" alt="<%=item.getName()%>">
			</div>

			<!-- Item Info + Rent Form -->
			<div class="col-md-5 ms-5">
				<h2><%=item.getName()%></h2>
				<h4 class="text-muted"><%=item.getCategory()%></h4>
				<p><%=item.getDescription()%></p>
				<h4 class="price-tag">
					₹<%=item.getPricePerMonth()%>
					/ month
				</h4>

				<form action="<%=request.getContextPath()%>/BookingServlet"
					method="post" class="form-section">
					<input type="hidden" name="itemId" value="<%=item.getId()%>" />

					<div class="mb-3">
						<label for="startDate">Start Date</label> <input type="date"
							id="startDate" name="startDate" class="form-control" required>
					</div>

					<div class="mb-3">
						<label for="endDate">End Date</label> <input type="date"
							id="endDate" name="endDate" class="form-control" required>
					</div>
					
					<div class="mb-3">
						<label for="address">Address</label> <textarea rows="2" cols="50"
							id="address" name="address" class="form-control" required></textarea>
					</div>

					<div class="mb-3">
						<label for="totalAmount">Total Amount</label> <input type="text"
							id="totalAmount" name="totalAmount" class="form-control" readonly>
					</div>

					<button type="submit" class="btn btn-success">Proceed to
						Payment</button>
				</form>
			</div>
		</div>
	</div>

	<!-- JS to Calculate Total Amount -->
<script>
	document.addEventListener("DOMContentLoaded", () => {
		const price = parseFloat("<%=item.getPricePerMonth()%>");
		const startInput = document.querySelector('input[name="startDate"]');
		const endInput = document.querySelector('input[name="endDate"]');
		const totalField = document.getElementById("totalAmount");

		function calculateTotal() {
			const startDate = new Date(startInput.value);
			const endDate = new Date(endInput.value);

			if (!isNaN(startDate) && !isNaN(endDate)) {
				const diffTime = endDate.getTime() - startDate.getTime();
				const diffDays = Math.floor(diffTime / (1000 * 60 * 60 * 24)) + 1;

				if (diffDays > 0) {
					const total = price * (diffDays / 30); // Monthly rate divided by 30 days
					totalField.value = '₹' + total.toFixed(2);
				} else {
					totalField.value = '';
				}
			}
		}

		// Add input and change events to cover all cases
		["input", "change"].forEach(eventType => {
			startInput.addEventListener(eventType, calculateTotal);
			endInput.addEventListener(eventType, calculateTotal);
		});
	});
</script>



	<%
	}
	%>


	<%@ include file="includes/footer.jsp"%>

</body>
</html>
