<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Proceed to Payment</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background-color: #f4f7f6;
        min-height: 100vh;
        display: flex;
        flex-direction: column;
    }
    .payment-container {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 50px 0;
    }
    .payment-card {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        padding: 40px;
        text-align: center;
        max-width: 500px;
        width: 100%;
    }
    .payment-card h2 {
        color: #333;
        margin-bottom: 25px;
        font-weight: 600;
    }
    .payment-details {
        margin-bottom: 30px;
        font-size: 1.1em;
        color: #555;
    }
    .payment-details p {
        margin-bottom: 10px;
    }
    .payment-details strong {
        color: #007bff;
    }
    .btn-razorpay {
        background-color: #008CBA; /* Razorpay blue */
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 5px;
        font-size: 1.1em;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .btn-razorpay:hover {
        background-color: #007bbd;
    }
    .loading-message {
        margin-top: 20px;
        color: #666;
    }
</style>

</head>
<body>
    <%@ include file="includes/header.jsp"%>

    <div class="payment-container">
        <div class="payment-card">
            <h2>Proceed to Payment</h2>
            <div class="payment-details">
                <p>Booking ID: <strong><%= request.getAttribute("bookingId") %></strong></p>
                <p>Amount: <strong><%= request.getAttribute("currency") %> <%= request.getAttribute("amount") %></strong></p>
                <p class="loading-message" id="loadingMessage">Loading payment gateway...</p>
            </div>
            <button id="rzp-button1" class="btn-razorpay" style="display:none;">Pay Now</button>
        </div>
    </div>

    <%@ include file="includes/footer.jsp"%>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const loadingMessage = document.getElementById('loadingMessage');
            const payButton = document.getElementById('rzp-button1');

            // Collect data from request attributes
            const orderId = "<%= request.getAttribute("orderId") %>";
            const amount = parseFloat("<%= request.getAttribute("amount") %>"); // Original amount
            const currency = "<%= request.getAttribute("currency") %>";
            const keyId = "<%= request.getAttribute("keyId") %>";
            const bookingId = "<%= request.getAttribute("bookingId") %>"; // Pass bookingId to callback
            const userEmail = "<%= request.getAttribute("userEmail") %>";
            const userPhone = "<%= request.getAttribute("userPhone") %>";
            const itemName = "<%= request.getAttribute("itemName") %>";
            const contextPath = "<%= request.getContextPath() %>"; // Get context path for callback URL

            // Only show button and hide loading message if orderId is valid
            if (orderId && orderId !== 'null' && orderId !== '') {
                loadingMessage.style.display = 'none';
                payButton.style.display = 'block';
            } else {
                loadingMessage.innerText = 'Error: Could not retrieve payment details. Please go back and try again.';
                loadingMessage.style.color = 'red';
                return; // Stop execution if no orderId
            }

            // Razorpay options
            var options = {
                "key": keyId, // Enter the Key ID generated from the Dashboard
                "amount": amount * 100, // Amount is in currency subunits. Default currency is INR. Hence, 50000 = 500.00 INR
                "currency": currency,
                "name": "RentMate",
                "description": itemName,
                "image": contextPath + "/images/logo.png", // Path to your logo (optional)
                "order_id": orderId, // This is the Order ID created in your PaymentServlet
                "handler": function (response){
                    // This function is called when the payment is successful or fails on Razorpay's end
                    // response.razorpay_payment_id: The ID of the payment
                    // response.razorpay_order_id: The ID of the order
                    // response.razorpay_signature: The signature generated by Razorpay
                    
                    // Send these details to your server for verification
                    window.location.href = contextPath + "/PaymentCallbackServlet?paymentId=" + response.razorpay_payment_id +
                                            "&orderId=" + response.razorpay_order_id +
                                            "&signature=" + response.razorpay_signature +
                                            "&bookingId=" + bookingId; // Pass bookingId back to server
                },
                "prefill": {
                    "email": userEmail,
                    "contact": userPhone
                },
                "notes": {
                    "booking_id": bookingId // Custom notes you want to pass to Razorpay
                },
                "theme": {
                    "color": "#008CBA" // Razorpay blue
                },
                "modal": {
                    "ondismiss": function() {
                        // Optional: Handle when user closes the payment modal
                        console.log('Payment modal dismissed');
                        // You could redirect back to details page or show a message
                        // window.location.href = contextPath + "/details.jsp?itemId=" + itemId; // If you can get itemId here
                    }
                }
            };

            // When the button is clicked, open the Razorpay Checkout
            document.getElementById('rzp-button1').onclick = function(e){
                var rzp1 = new Razorpay(options);
                rzp1.open();
                e.preventDefault();
            }
        });
    </script>
</body>
</html>