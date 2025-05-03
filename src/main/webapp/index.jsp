<!-- Home page -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.rentmate.model.User"%>

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
	href="${pageContext.request.contextPath}/css/header.css">

<!-- Custom footer CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">

<!-- Page-specific CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home.css">
</head>

<!-- Marquee JS -->
<script src="${pageContext.request.contextPath}/js/marquee.js"></script>

<body>
	<div class="container">

		<%-- Show welcome message only when user is logged in --%>

		<%--
    		User loggedInUser = (User) session.getAttribute("user");
    		if (loggedInUser != null) {
		 
		
		<!-- <div class="text-center my-4">
        <h1 class="display-5 fw-bold text-primary">Welcome,loggedInUser.getName()e() %>!</h1>
    	</div> -->
    	
		<%-- 
    	}
		--%>


		<!-- Slider part start -->

		<div class="row">
			<div class="col-12">

				<!-- Carousel Start -->
				<div id="rentMateCarousel" class="carousel slide carousel-fade"
					data-bs-ride="carousel" data-bs-interval="2000">
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

		<!-- ############################################ -->

		<!-- Catrgories start -->

		<section class="container my-5" id="popular-categories">
			<div class="d-flex justify-content-between align-items-center mb-4">
				<h3 class="section-title">Top Rented Categories</h3>
				<a href="#" class="btn btn-outline-primary shadow-sm allProdBtn">All
					Products</a>
			</div>

			<div class="row g-4 text-center">
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
						<a href="${pageContext.request.contextPath}/homeapp-cat.jsp">
							<img
							src="${pageContext.request.contextPath}/images/categories/cat-6.png"
							alt="Home Appliances" class="img-fluid border rounded p-1" />
						</a>
						<p class="mt-2 fw-semibold text-dark">Home Appliances</p>
					</div>
				</div>
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
						<img
							src="${pageContext.request.contextPath}/images/categories/cat-4.png"
							alt="Books & Study Materials"
							class="img-fluid border rounded p-1" />
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
							src="${pageContext.request.contextPath}/images/categories/cat-2.png"
							alt="Vending Machiene" class="img-fluid border rounded p-1" />
						<p class="mt-2 fw-semibold text-dark">Vending Machiene</p>
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

		<!-- Catrgories end -->

		<!-- ############################################ -->


		<!-- banner start -->

		<div class="container my-5">
			<div class="row g-4">
				<!-- Product Image -->
				<div class="col-md-6">
					<a href="${pageContext.request.contextPath}/listings.jsp"> <img
						src="${pageContext.request.contextPath}/images/banners/product-brouse.png"
						alt="Customer Listed Products" class="img-fluid rounded-4 shadow">
					</a>
				</div>

				<!-- Service Image -->
				<div class="col-md-6">
					<a href="#"> <img
						src="${pageContext.request.contextPath}/images/banners/service-brouse.png"
						alt="Customer Listed Services" class="img-fluid rounded-4 shadow">
					</a>
				</div>
			</div>
		</div>

		<!-- banner end -->

		<!-- ############################################ -->


		<!-- Bootstrap Accordion FAQ Section -->

		<section class="faq-section py-5">
			<div class="container">
				<h2 class="text-center fw-bold mb-4 text-dark">
					Got Questions?<br>We've Got Answers!
				</h2>

				<div class="accordion" id="faqAccordion">

					<!-- Question 1 -->
					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingOne">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseOne" aria-expanded="false"
								aria-controls="collapseOne">1. Why RentMate?</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse"
							aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
							<div class="accordion-body bg-primary text-white rounded-bottom">
								<p class="fw-bold mb-2">RentMate is the largest rental
									marketplace that allows people to Give On Rent or Take on rent.
									The platform offers:</p>
								<ol class="ps-3 mb-0">
									<li><strong>No paperwork:</strong> As an owner, just list
										the products you want to rent and as a renter, simply, book
										the products online you want on rent and relax.</li>
									<li><strong>Customized Rental Period –</strong> Now you
										can decide the rental duration as per your requirement,
										starting from as low as a day to a few years.</li>
									<li><strong>Wide range of products:</strong> Our rental
										platform includes a wide range of product categories, from
										Home appliances & Electronics to Baby Utilities, from
										Electronics and Musical Instruments to Fitness Equipment or
										Wedding decorations.</li>
									<li><strong>Door step Delivery:</strong> No need to visit
										the owner to get a product on rent. The product will be picked
										from the owner and will be delivered at the renter’s doorstep.</li>
									<li><strong>Earn from your Extras:</strong> You can give
										on rent (rent-out) & everything from that extra sofa, musical
										keyboard, and your grown-up kid’s toys that you bought with
										great joy, but now you don’t need them. Simply rent them out
										to someone and share your joys.</li>
								</ol>
							</div>
						</div>
					</div>

					<!-- Question 2 -->
					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingTwo">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseTwo" aria-expanded="false"
								aria-controls="collapseTwo">2. How does RentMate work?
							</button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse"
							aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
							<div class="accordion-body bg-primary text-white rounded-bottom">
								<p class="fw-bold mb-2">RentMate is the only platform where
									one can Give On Rent (give your extra / unused products on
									rent) as well as Take things on rent (Rent In) anywhere,
									anytime.</p>
							</div>
						</div>
					</div>

					<!-- Question 3 -->
					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingThree">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseThree" aria-expanded="false"
								aria-controls="collapseThree">3. Why should I Give On
								Rent on RentMate</button>
						</h2>
						<div id="collapseThree" class="accordion-collapse collapse"
							aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
							<div class="accordion-body bg-primary text-white rounded-bottom">
								<p class="fw-bold mb-2">RentMate is the first website that
									offers products on rent for minimum one day and maximum for few
									years.</p>
								<ul class="ps-3 mb-0" type="disc">
									<li>RentMate is trustworthy and facilitates safe and
										reliable transactions. RentMate protects users personal
										information</li>
									<li>RentMate protects users personal information</li>
									<li>RentMate offers a user-friendly interface that is easy
										to navigate and understand.</li>
									<li>Mandatory KYC verification for all users</li>
									<li>24x7 customer support available</li>
								</ul>
							</div>
						</div>
					</div>

					<!-- Question 4 -->
					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingFour">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseFour" aria-expanded="false"
								aria-controls="collapseFour">4. How To Give On Rent a
								Product on RentMate?</button>
						</h2>
						<div id="collapseFour" class="accordion-collapse collapse"
							aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
							<div class="accordion-body bg-primary text-white rounded-bottom">
								<p class="fw-bold mb-2">RentMate(R4ME) works as follows for
									the product owners:</p>
								<ol class="ps-3 mb-0">
									<li>Register or sign up on RentMate.</li>
									<li>Click pictures of the product / property you want to
										give on rent and click on Give on Rent. Select the appropriate
										category from List Product or List Property.</li>
									<li>Create a listing for the item you want to Give On Rent
										by posting your ad on RentMate. In the Pricing details
										section, you can click on the Rent Calculator to get the
										suggestive rental amount and security amount by entering the
										product category, purchase price and purchase year.</li>
									<li>Complete the listing and wait for your listed item to
										be approved by the admin within 24 hrs.</li>
									<li>When the product is rented out, you will be notified
										for pick-up schedule. Be available with your listed item at
										the time of pickup.</li>
									<li>Get paid by our secure payment system within 2-3
										working days from pickup date.</li>
									<li>Get your rented item back after the rental period.</li>
								</ol>
							</div>
						</div>
					</div>

					<!-- Updated Questions 5 & 6 added to Accordion -->
					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingFive">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseFive" aria-expanded="false"
								aria-controls="collapseFive">5. How to Take a Product
								on rent (Take On Rent) from RentMate?</button>
						</h2>
						<div id="collapseFive" class="accordion-collapse collapse"
							aria-labelledby="headingFive" data-bs-parent="#faqAccordion">
							<div class="accordion-body text-white bg-primary rounded-bottom">
								<p class="fw-bold">RentMate(R4ME) works as follows for the
									renters:</p>
								<ol class="ps-3 mb-0">
									<li>Search what you are looking for.</li>
									<li>Register or Sign up on RentMate, if not done already.</li>
									<li>Choose the product you want to rent and click on “Take
										on Rent” to book the product for the dates you need and You
										can choose self-pick up (if applicable) or delivery by us.</li>
									<li>Make the payment and complete your KYC, if not done.</li>
									<li>Return the item to the owner and leave a review.</li>
								</ol>
							</div>
						</div>
					</div>

					<div class="accordion-item mb-3">
						<h2 class="accordion-header" id="headingSix">
							<button class="accordion-button fw-semibold collapsed"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#collapseSix" aria-expanded="false"
								aria-controls="collapseSix">6. What things can I Rent
								from RentMate?</button>
						</h2>
						<div id="collapseSix" class="accordion-collapse collapse"
							aria-labelledby="headingSix" data-bs-parent="#faqAccordion">
							<div class="accordion-body text-white bg-primary rounded-bottom">
								<p>You can Rent from our platform– Rent Furniture, Rent
									Drone, Rent Wedding Dresses and Rent Jewellery, Rent
									Appliances, Rent Car, Rent Bike, Rent Musical instruments, Rent
									Fitness equipment, Rent Books and Rent Toys and explore
									multiple other categories.</p>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section>

		<!-- Bootstrap Accordion FAQ Section end -->

		<!-- ############################################ -->


		<!-- marquee section start -->

		<section class="corporate-customers mt-3 mb-5">
			<div class="container">
				<h3 class="fw-bold mb-5" style="color: #f87439;">Our Corporate
					Customers</h3>
				<div class="overflow-hidden">
					<div class="logo-row-marquee" id="logoRow1">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-2.png"
							alt="Logo 1" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-3.png"
							alt="Logo 2" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-4.png"
							alt="Logo 3" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-5.png"
							alt="Logo 4" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-6.png"
							alt="Logo 5" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-7.png"
							alt="Logo 6" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-8.png"
							alt="Logo 7" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-9.png"
							alt="Logo 8" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-10.png"
							alt="Logo 9" style="max-height: 50px; margin-right: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-11.png"
							alt="Logo 10" style="max-height: 50px; margin-right: 15px;">
					</div>
				</div>
				<div class="overflow-hidden mt-3">
					<div class="logo-row-marquee right-to-left" id="logoRow2"
						style="direction: rtl;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-12.png"
							alt="Logo 10" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-13.png"
							alt="Logo 9" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-14.png"
							alt="Logo 8" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-15.png"
							alt="Logo 7" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-16.png"
							alt="Logo 6" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-17.png"
							alt="Logo 5" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-18.png"
							alt="Logo 4" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-19.png"
							alt="Logo 3" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-20.png"
							alt="Logo 2" style="max-height: 50px; margin-left: 15px;">
						<img
							src="${pageContext.request.contextPath}/images/logos/Asset-2.png"
							alt="Logo 1" style="max-height: 50px; margin-left: 15px;">
					</div>
				</div>
			</div>
		</section>

		<!-- marquee section end -->


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