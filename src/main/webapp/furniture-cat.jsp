<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Furnitures</title>

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
		<h1>Top Rented Furnitures</h1>
	</div>

	<div class="container mt-3 pt-2">
		<div class="row g-4">
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-1.jpg"
						alt="Wooden Wardrobe" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Wooden wardrobe</a>
						</h5>
						<p class="product-price">&#8377;538 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-2.png"
						alt="Student Combo Deal" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Student Combo Deal</a>
						</h5>
						<p class="product-price">&#8377;1299 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-3.png"
						alt="White Chair" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">White Chair</a>
						</h5>
						<p class="product-price">&#8377;982 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-9.jpeg"
						alt="Round Table (Glass)" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Round Table (Glass)</a>
						</h5>
						<p class="product-price">&#8377;983 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-5.jpeg"
						alt="Living Room Sofa" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Living Room Sofa Set</a>
						</h5>
						<p class="product-price">&#8377;2500 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-6.jpeg"
						alt="Dining Table Set" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">6 Seater Dining Table Set</a>
						</h5>
						<p class="product-price">&#8377;1800 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-7.jpg"
						class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Queen Size Wooden Bed</a>
						</h5>
						<p class="product-price">&#8377;1100 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-8.jpg"
						alt="Another Dining Set" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">4 Seater Dining Table</a>
						</h5>
						<p class="product-price">&#8377;1500 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-9.jpeg"
						alt="Study Table" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Ergonomic Study Table</a>
						</h5>
						<p class="product-price">&#8377;750 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-10.jpeg"
						alt="Office Chair" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Comfortable Office Chair</a>
						</h5>
						<p class="product-price">&#8377;600 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-11.jpg"
						alt="Bookshelf" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Wooden Bookshelf with Shelves</a>
						</h5>
						<p class="product-price">&#8377;880 / Month</p>
						<a href="#"><button class="btn btn-rent">Take On Rent</button></a>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="product-card">
					<a href="#"><img
						src="${pageContext.request.contextPath}/images/furniture-category/f-12.jpeg"
						alt="TV Unit" class="product-image"></a>
					<div class="product-details">
						<h5 class="product-title">
							<a href="#">Modern TV Entertainment Unit</a>
						</h5>
						<p class="product-price">&#8377;1200 / Month</p>
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
			<a href="#" class="btn btn-outline-primary shadow-sm allProdBtn">All
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