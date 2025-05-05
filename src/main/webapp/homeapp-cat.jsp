<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Home Appliances</title>

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
	href="${pageContext.request.contextPath}/css/category.css">

</head>
<body>

<div class="container mt-4 text-center cat-head">
		<h1>Top Rented Home Appliances</h1>
	</div>

	<div class="container mt-3 pt-2">
		<div class="row g-4">
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-16.jpeg"
						alt="Wooden Wardrobe" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Mist Fan</a>
						</h5>
						<p class="product-price">&#8377;1,620/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-2.jpeg"
						alt="Student Combo Deal" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Projector with Screen</a>
						</h5>
						<p class="product-price">&#8377;1,499/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-3.png"
						alt="White Chair" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Room Oil Heater</a>
						</h5>
						<p class="product-price">&#8377;1,250/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-4.png"
						alt="Round Table (Glass)" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Air Purifier & Geyser Combo</a>
						</h5>
						<p class="product-price">&#8377;1,150/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-5.png"
						alt="Living Room Sofa" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">OTG</a>
						</h5>
						<p class="product-price">&#8377;750/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-6.jpeg"
						alt="Dining Table Set" class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Kitchen Combo Deal of 4</a>
						</h5>
						<p class="product-price">&#8377;₹2,800/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-7.png"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">100 Litre Deep Freezer</a>
						</h5>
						<p class="product-price">&#8377;2,450/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-8.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Induction Cooktop</a>
						</h5>
						<p class="product-price">&#8377;160/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-9.jpg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Inverter - Single Battery</a>
						</h5>
						<p class="product-price">&#8377;1,098/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-10.jpg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Dishwasher - 12 P</a>
						</h5>
						<p class="product-price">&#8377;1,499/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-11.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">2 Ton Split Air Conditioner</a>
						</h5>
						<p class="product-price">&#8377;1,999/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-12.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Refrigerator Double Door</a>
						</h5>
						<p class="product-price">&#8377;1100 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-13.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Front Loading Washing Machine</a>
						</h5>
						<p class="product-price">&#8377;1,290/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-14.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Coolers</a>
						</h5>
						<p class="product-price">&#8377;3,780/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-15.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Television 50-55" (Inch)</a>
						</h5>
						<p class="product-price">&#8377;1,580/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/home-category/home-1.jpeg"
						class="product-image"></a>
					<div class="product-details" style="text-align: center;">
						<h5 class="product-title">
							<a href="#">Projector with Screen</a>
						</h5>
						<p class="product-price">&#8377;1,499/ Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- More categories -->

	<section class="container my-5 pt-5" id="popular-categories">
		<div class="d-flex justify-content-between align-items-center mb-4">
			<h3 class="section-title">More Categories</h3>
			<a href="${pageContext.request.contextPath}/listings.jsp" class="btn btn-outline-primary shadow-sm allProdBtn">All
				Products</a>
		</div>

		<div class="row g-4 text-center">
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<a href="${pageContext.request.contextPath}/drones-cat.jsp"> <img
						src="${pageContext.request.contextPath}/images/categories/cat-3.png"
						alt="Furniture" class="img-fluid border rounded p-1" />
					</a>
					<p class="mt-2 fw-semibold text-dark">Drones</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<a href="${pageContext.request.contextPath}/homeapp-cat.jsp"> <img
						src="${pageContext.request.contextPath}/images/categories/cat-6.png"
						alt="Vending Machine" class="img-fluid border rounded p-1" />
					</a>
					<p class="mt-2 fw-semibold text-dark">Home Appliances</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<a href="${pageContext.request.contextPath}/furniture-cat.jsp">
						<img
						src="${pageContext.request.contextPath}/images/categories/cat-1.png"
						alt="Furniture" class="img-fluid border rounded p-1" />
					</a>
					<p class="mt-2 fw-semibold text-dark">Furniture</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-4.png"
						alt="Books & Study Materials" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Medical Equipment &
						Services</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-5.png"
						alt="Medical Equipment" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Biking & Hiking Gears</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<a href="${pageContext.request.contextPath}/homeapp-cat.jsp"> <img
						src="${pageContext.request.contextPath}/images/categories/cat-2.png"
						alt="Furniture" class="img-fluid border rounded p-1" />
					</a>
					<p class="mt-2 fw-semibold text-dark">Vending Machine</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-7.png"
						alt="Home Appliances" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Automobiles</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-8.png"
						alt="Stage Decorators" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Kids Utilities</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-9.png"
						alt="Fashion" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Electronics & Gadgets</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-10.png"
						alt="Furniture" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">CCTV's</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-1.png"
						alt="Decorations" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Decorations</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-12.png"
						alt="Baby Products" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Musical Instruments</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-13.png"
						alt="Construction Tools" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Fitness & Sports
						Equipment</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-14.png"
						alt="Electronics" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Electronics & Gadgets</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-1.png"
						alt="Farm Equipment" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Cameras</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-16.png"
						alt="Kitchen Items" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Machines & Tools</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-2.png"
						alt="Cosmetics" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Cosmetics</p>
				</div>
			</div>
			<div class="col-6 col-sm-4 col-md-2">
				<div class="category-card p-2">
					<img
						src="${pageContext.request.contextPath}/images/categories/cat-18.png"
						alt="Gaming Items" class="img-fluid border rounded p-1" />
					<p class="mt-2 fw-semibold text-dark">Generators</p>
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


	<!-- Footer jsp -->
	<%@ include file="includes/footer.jsp"%>

</body>
</html>