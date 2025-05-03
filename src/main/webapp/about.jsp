<!-- About page -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header jsp -->
<%@ include file="includes/header.jsp"%>

<!----------------------------------------------------------------->
<!-- about.jsp: Home Page Structure -->
<!----------------------------------------------------------------->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RentMate | About</title>

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
	href="${pageContext.request.contextPath}/css/about.css">
</head>

</head>
<body>


	<section class="about-us-banner py-3">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-12 text-center text-md-start">
					<h2 class="about-us-text">Welcome To RentMate</h2>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-12">
					<img
						src="${pageContext.request.contextPath}/images/banners/about-banner.png"
						alt="About Us Illustration" class="about-us-image">
				</div>
			</div>
		</div>
	</section>

	<section class="about-rentmate py-5">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>About RentMate</h2>
					<hr class="heading-underline">
					<p>
						RentMate is the largest renting marketplace that started with a
						mission to change people's lives by providing a <span
							style="color: #ff6f00;">first-of-its-kind platform</span> that
						allows people to put their unused assets or extras on rent and
						earn. We encourage people to rent their belongings when not in use
						rather than hoarding them or selling them for almost free.
					</p>
					<p>We have observed that sometimes we miss our small belongings
						when we are either out on a short stay or on holiday or need them
						for a short duration. At that moment, if we get our desirable
						things at a negligible cost without buying them, our comfort level
						and happiness doubles, and we feel at home wherever we are.</p>
					<p>A simple shift in the mindset of people from hoarding to
						renting out can give someone else the comfort and feeling of being
						at home with better availability and affordability.</p>
					<p>RentMate also gives a platform to people to try different
						products on rent before buying them.</p>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-md-12">
					<h2>What Do We Offer</h2>
					<p>
						At <span style="color: #ff6f00;">RentMate</span>, we aim to bring
						a hassle-free renting experience to both owners and renters. The
						platform offers:
					</p>
					<ul>
						<li><strong>No paperwork:</strong> Owners can list the
							products they want to rent, and renters can book the products
							online with ease.</li>
						<li><strong>Customized Rental Period:</strong> Decide the
							rental duration as per your requirement, starting from as low as
							a few hours to several years.</li>
						<li><strong>Wide Range of Products:</strong> Our platform
							includes categories such as Home Appliances, Baby, Utilities,
							Electronics, Musical Instruments, Fitness Equipment, and Wedding
							Decorations.</li>
						<li><strong>Doorstep Delivery:</strong> Products are picked
							from the owner and delivered to the renter's doorstep.</li>
						<li><strong>Earn from Your Extras:</strong> Rent out items
							like extra furniture, musical instruments, or toys and share your
							joy while earning income.</li>
					</ul>
					<p>
						Join <span style="color: #ff6f00;">RentMate</span> and experience
						a seamless way to rent and earn!
					</p>
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