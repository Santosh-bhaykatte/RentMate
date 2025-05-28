<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Proceed to Payment</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/checkout.css">

</head>
<body>

	<div class="payment-container">
		<div class="payment-card">
			<h2>Proceed to Payment</h2>
			<div class="payment-details">
				<%
				// Safe attribute retrieval with null checks
				String orderId = (String) request.getAttribute("orderId");
				String amount = (String) request.getAttribute("amount");
				String currency = (String) request.getAttribute("currency");
				String keyId = (String) request.getAttribute("keyId");
				Object bookingIdObj = request.getAttribute("bookingId");
				String userEmail = (String) request.getAttribute("userEmail");
				String userPhone = (String) request.getAttribute("userPhone");
				String itemName = (String) request.getAttribute("itemName");

				// Convert bookingId safely
				String bookingId = "";
				if (bookingIdObj != null) {
					bookingId = bookingIdObj.toString();
				}

				// Set defaults for null values
				if (currency == null)
					currency = "INR";
				if (userEmail == null)
					userEmail = "";
				if (userPhone == null)
					userPhone = "";
				if (itemName == null)
					itemName = "Rental Booking";

				// Check if we have essential data
				boolean hasValidData = (orderId != null && !orderId.trim().isEmpty() && amount != null && !amount.trim().isEmpty()
						&& keyId != null && !keyId.trim().isEmpty() && !bookingId.trim().isEmpty());
				%>

				<%
				if (hasValidData) {
				%>
				<p>
					Booking ID: <strong><%=bookingId%></strong>
				</p>
				<p>
					Amount: <strong><%=currency%> <%=amount%></strong>
				</p>
				<p class="loading-message" id="loadingMessage">Loading payment
					gateway...</p>
				<%
				} else {
				%>
				<p class="error-message">Error: Payment details are incomplete.
					Please try again.</p>
				<a href="javascript:history.back()" class="btn-back">Go Back</a>
				<%
				}
				%>
			</div>

			<%
			if (hasValidData) {
			%>
			<button id="rzp-button1" class="btn-razorpay" style="display: none;">Pay
				Now</button>
			<%
			}
			%>
		</div>
	</div>

	<%@ include file="includes/footer.jsp"%>

	<%
	if (hasValidData) {
	%>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            const loadingMessage = document.getElementById('loadingMessage');
            const payButton = document.getElementById('rzp-button1');

            // Collect data from JSP variables (safely)
            const orderId = "<%=orderId.replaceAll("\"", "\\\"")%>";
            const amount = parseFloat("<%=amount%>");
            const currency = "<%=currency%>";
            const keyId = "<%=keyId.replaceAll("\"", "\\\"")%>";
            const bookingId = "<%=bookingId%>";
            const userEmail = "<%=userEmail.replaceAll("\"", "\\\"")%>";
            const userPhone = "<%=userPhone.replaceAll("\"", "\\\"")%>";
            const itemName = "<%=itemName.replaceAll("\"", "\\\"")%>";
            const contextPath = "<%=request.getContextPath()%>
		";

							// Validate essential data
							if (!orderId || !keyId || !amount || isNaN(amount)) {
								loadingMessage.innerText = 'Error: Invalid payment data. Please go back and try again.';
								loadingMessage.className = 'loading-message error-message';
								return;
							}

							// Show pay button and hide loading message
							loadingMessage.style.display = 'none';
							payButton.style.display = 'block';

							// Razorpay options
							var options = {
								"key" : keyId,
								"amount" : Math.round(amount * 100), // Ensure it's an integer
								"currency" : currency,
								"name" : "RentMate",
								"description" : itemName,
								"image" : contextPath + "/images/logo.png",
								"order_id" : orderId,
								"handler" : function(response) {
									// Redirect to callback servlet with payment details
									var callbackUrl = contextPath
											+ "/PaymentCallbackServlet"
											+ "?paymentId="
											+ encodeURIComponent(response.razorpay_payment_id)
											+ "&orderId="
											+ encodeURIComponent(response.razorpay_order_id)
											+ "&signature="
											+ encodeURIComponent(response.razorpay_signature)
											+ "&bookingId="
											+ encodeURIComponent(bookingId);

									console.log("Redirecting to:", callbackUrl);
									window.location.href = callbackUrl;
								},
								"prefill" : {
									"email" : userEmail,
									"contact" : userPhone
								},
								"notes" : {
									"booking_id" : bookingId,
									"item_name" : itemName
								},
								"theme" : {
									"color" : "#008CBA"
								},
								"modal" : {
									"ondismiss" : function() {
										console
												.log('Payment modal dismissed by user');
										// Optional: Show a message or redirect
										alert('Payment was cancelled. You can try again by clicking the Pay Now button.');
									}
								}
							};

							// Pay button click handler
							document.getElementById('rzp-button1').onclick = function(
									e) {
								e.preventDefault();
								try {
									var rzp1 = new Razorpay(options);
									rzp1
											.on(
													'payment.failed',
													function(response) {
														console
																.error(
																		'Payment failed:',
																		response.error);
														alert('Payment failed: '
																+ response.error.description);
													});
									rzp1.open();
								} catch (error) {
									console.error('Error opening Razorpay:',
											error);
									alert('Error opening payment gateway. Please try again.');
								}
							};
						});
	</script>
	<%
	}
	%>
</body>
</html>