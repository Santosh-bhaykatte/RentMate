<!-- Item grid + search -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Products</title>

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
	href="${pageContext.request.contextPath}/css/listings.css">
</head>


</head>
<body>

	<%@ page import="java.util.*, com.rentmate.model.Item"%>

	<!-- All Products -->

	<div class="container mt-3 pt-2">
		<div class="row g-4">

			<!-- ######################################## -->

			<%
			List<Item> itemList = (List<Item>) request.getAttribute("itemList");
			if (itemList != null) {
				for (Item item : itemList) {
					if (item.getId() == 7 || item.getId() == 8) { // show only 2 demo items
			%>
			<div class="col-md-3">
				<div class="product-card">
					<a
						href="<%=request.getContextPath()%>/details?itemId=<%=item.getId()%>">
						<img
						src="<%=request.getContextPath() + "/" + item.getImagePath()%>"
						alt="<%=item.getName()%>" class="product-image">
					</a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a
								href="<%=request.getContextPath()%>/details?itemId=<%=item.getId()%>"><%=item.getName()%></a>
						</h5>
						<p class="product-price">
							&#8377;<%=item.getPricePerMonth()%>/ Month
						</p>
						<a
							href="<%=request.getContextPath()%>/details?itemId=<%=item.getId()%>"
							class="btn btn-rent">Take On Rent</a>
					</div>
				</div>
			</div>
			<%
			}
			}
			}
			%>

			<!-- ######################################## -->

			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/f-2.png"
						alt="White Chair" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">White Chair</a>
						</h5>
						<p class="product-price">&#8377;963/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/f-3.png"
						alt="Round Table (Glass)" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Round Table (Glass)</a>
						</h5>
						<p class="product-price">&#8377;963/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/automobile-1.jpg"
						alt="Dining Table Set" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Ford Mustang GT</a>
						</h5>
						<p class="product-price">&#8377;43,200/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/automobile-2.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Pulsar 220</a>
						</h5>
						<p class="product-price">&#8377;1100 / Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/automobile-3.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">BMW 5 Series 530</a>
						</h5>
						<p class="product-price">&#8377;20,500/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/automobile-4.png"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Mahindra Thar (Soft Top)</a>
						</h5>
						<p class="product-price">&#8377;1100 / Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Biking-1.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">DJI RSC2 Gimbal</a>
						</h5>
						<p class="product-price">&#8377;420/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Biking-2.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">2-person Camping Tent</a>
						</h5>
						<p class="product-price">&#8377;180/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Biking-3.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Riding Gloves</a>
						</h5>
						<p class="product-price">&#8377;117/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Biking-4.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">70 L Bagpack</a>
						</h5>
						<p class="product-price">&#8377;125/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/fitness-1.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Stationary Exercise Upto
								100 Kg</a>
						</h5>
						<p class="product-price">&#8377;2,007/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/fitness-2.jpg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Bench & Mini Squat Rack</a>
						</h5>
						<p class="product-price">&#8377;750/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/fitness-3.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Spin Bike</a>
						</h5>
						<p class="product-price">&#8377;2,200/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/fitness-4.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Dumbbells - Rate Per Kg</a>
						</h5>
						<p class="product-price">&#8377;90/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Musical-1.png"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Yamaha PSR 550 Keyboard </a>
						</h5>
						<p class="product-price">&#8377;900/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Musical-2.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Rock Drum Set (7 Piece)</a>
						</h5>
						<p class="product-price">&#8377;2,800/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Musical-3.png"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Grand Piano</a>
						</h5>
						<p class="product-price">&#8377;34,000/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="details?itemId=${item.id}"><img
						src="${pageContext.request.contextPath}/images/products/Musical-4.jpeg"
						alt="Living Room Sofa" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="details?itemId=${item.id}">Harmonium</a>
						</h5>
						<p class="product-price">&#8377;4,000/ Month</p>
						<a href="details?itemId=${item.id}"><button
								class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>



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