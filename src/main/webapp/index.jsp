<!-- Home page -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>
<!----------------------------------------------------------------->
<!-- index.jsp: Home Page Structure -->
<!----------------------------------------------------------------->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | Home</title>

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
	href="${pageContext.request.contextPath}/includes/header.css">

<!-- Page-specific CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home.css">
</head>
<body>
	<div class="container">

		<!-- Slider part start -->
		<div class="row">
			<div class="col-12">

				<!-- Carousel Start -->
				<div id="rentMateCarousel" class="carousel slide carousel-fade"
					data-bs-ride="carousel" data-bs-interval="3000">
					<div class="carousel-inner">

						<div class="carousel-item active">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-12">
										<a href="#"> <img
											src="${pageContext.request.contextPath}/images/banners/b-1.jpg"
											class="d-block w-100 custom-carousel-img"
											alt="Slider Image 1">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="carousel-item">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-12">
										<a href="#"> <img
											src="${pageContext.request.contextPath}/images/banners/b-2.jpg"
											class="d-block w-100 custom-carousel-img"
											alt="Slider Image 2">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="carousel-item">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-12">
										<a href="#"> <img
											src="${pageContext.request.contextPath}/images/banners/b-3.jpg"
											class="d-block w-100 custom-carousel-img"
											alt="Slider Image 3">
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class="carousel-item">
							<div class="container">
								<div class="row justify-content-center">
									<div class="col-12">
										<a href="#"> <img
											src="${pageContext.request.contextPath}/images/banners/b-1.jpg"
											class="d-block w-100 custom-carousel-img"
											alt="Slider Image 4">
										</a>
									</div>
								</div>
							</div>
						</div>

					</div>

					<!-- Optional: Carousel Controls -->
					<button class="carousel-control-prev" type="button"
						data-bs-target="#rentMateCarousel" data-bs-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#rentMateCarousel" data-bs-slide="next">
						<span class="carousel-control-next-icon"></span>
					</button>
				</div>
				<!-- Carousel End -->

			</div>
		</div>

		<!-- Slider part end -->

		<!-- Products start -->

		<!-- Top Rented Categories Section -->
		<section class="container my-5" id="popular-categories">
			<div class="d-flex justify-content-between align-items-center mb-4">
				<h3 class="section-title">Top Rented Categories</h3>
				<a href="#" class="btn btn-outline-primary shadow-sm allProdBtn">All
					Products</a>
			</div>

			<div class="row g-4 text-center">
				<div class="col-6 col-sm-4 col-md-2">
					<div class="category-card p-2">
						<img
							src="${pageContext.request.contextPath}/images/categories/cat-1.png"
							alt="Furniture" class="img-fluid border rounded p-1" />
						<p class="mt-2 fw-semibold text-dark">Furniture</p>
					</div>
				</div>
				<div class="col-6 col-sm-4 col-md-2">
					<div class="category-card p-2">
						<img
							src="${pageContext.request.contextPath}/images/categories/cat-2.png"
							alt="Vending Machine" class="img-fluid border rounded p-1" />
						<p class="mt-2 fw-semibold text-dark">Vending Machine</p>
					</div>
				</div>
				<div class="col-6 col-sm-4 col-md-2">
					<div class="category-card p-2">
						<img
							src="${pageContext.request.contextPath}/images/categories/cat-3.png"
							alt="Drones" class="img-fluid border rounded p-1" />
						<p class="mt-2 fw-semibold text-dark">Drones</p>
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
						<img
							src="${pageContext.request.contextPath}/images/categories/cat-6.png"
							alt="Biking Gears" class="img-fluid border rounded p-1" />
						<p class="mt-2 fw-semibold text-dark">Home Appliances</p>
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
						<p class="mt-2 fw-semibold text-dark">Fitness & Sports Equipment</p>
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


		<!-- Products end -->

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
</body>
</html>