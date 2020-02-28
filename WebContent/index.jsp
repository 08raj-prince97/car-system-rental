<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Collapsible sidebar using Bootstrap 4</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="index.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>


</head>
<body>

	<%--NAVBAR

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" style="height: 400px;">
				<img
					src="data:image/jpeg;base64,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"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" style="height: 50%;">
				<img
					src="data:image/jpeg;base64,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"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item" style="height: 400px;">
				<img
					src="data:image/jpeg;base64,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"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>





		<%--NAV BAR
	
	
	<nav class="navbar navbar-dark navbar-expand-lg navbar-light bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item" id="homeLink"><span
					style="cursor: pointer;" class="nav-link " onClick="showHomePage()">HOME</span></li>
				<li class="nav-item " id="aboutUsLink"><span class="nav-link"
					style="cursor: pointer;" onClick="showAboutUsPage()">ABOUT
						US </span></li>
				<li class="nav-item" id="bookCarLink"><a class="nav-link"
					style="cursor: pointer;" href="/Car_Rental_System/bookcar.jsp">BOOK
						CAR</a></li>
				<li class="nav-item" id="registerLink"><a class="nav-link"
					style="cursor: pointer;"
					href="/Car_Rental_System/emailregister.jsp">REGISTER</a></li>
				<li class="nav-item" id="loginLink"><a class="nav-link"
					style="cursor: pointer;" href="/Car_Rental_System/login.jsp">LOGIN</a></li>

				<li class="nav-item" id="contactUsLink"><span class="nav-link"
					style="cursor: pointer;" onClick="showContactUsPage()">CONTACT
						US</span></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>
	
	


	<%--HOME PAGE 

	<div id="homePage">
		<h1>Welcome to the car rental sysytem</h1>
	</div>
	
	

	<%--ABOUT US 

	<div id="aboutUsPage" hidden>
		<h1>ABOUT USABOUT USABOUT USABOUT USABOUT USABOUT USABOUT USABOUT
			US</h1>
	</div>


	<%--CONTACT US 

	<div id="contactUsPage" hidden>

		<form action="ContactUs" method="post">

			<div class="container mt-4">
				<h3 class="" style="text-align: center;">Contact Us Form</h3>

				<div class="form-group">
					<label for="exampleInputName">NAME*</label> <input type="text"
						class="form-control" id="exampleInputName"
						placeholder="Enter name" required name="name">
				</div>

				<div class="form-group">
					<label for="exampleInputMobile">MOBILE*</label> <input type="text"
						class="form-control" id="exampleInputMobile"
						placeholder="Enter mobile" required name="mobile">
				</div>

				<div class="form-group">
					<label for="exampleInputEmail">EMAIL ID*</label> <input
						type="email" class="form-control" id="exampleInputEmail"
						aria-describedby="emailHelp" required placeholder="Enter email"
						name="email">
				</div>

				<div class="form-group">
					<label for="exampleInputState">SUBJECT*</label> <input type="text"
						class="form-control" id="exampleInputState"
						placeholder="Enter state" required name="state">
				</div>
				<div class="form-group">
					<label for="message">MESSAGE*</label>

					<textarea id="message" rows="4" cols="50" class="form-control"
						name="message" required>
					</textarea>

				</div>

				<button type="submit" class="btn btn-dark">Submit</button>
			</div>
		</form>

	</div>


	<script>
		function showHomePage() {
			$("#homePage").removeAttr("hidden")
			$("#aboutUsPage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#registerPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#homeLink").addClass("active")
			$("#aboutUsLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#registerLink").removeClass("active")
			$("#loginLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showAboutUsPage() {
			$("#aboutUsPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#registerPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#aboutUsLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#registerLink").removeClass("active")
			$("#loginLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showBookCarPage() {
			$("#bookCarPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#aboutUsPage").attr("hidden", "true")
			$("#registerPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#bookCarLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#aboutUsLink").removeClass("active")
			$("#registerLink").removeClass("active")
			$("#loginLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}

		function showRegisterPage() {
			$("#registerPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#aboutUsPage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#registerLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#aboutUsLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#loginLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}

		function showContactUsPage() {
			$("#contactUsPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#aboutUsPage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#registerPage").attr("hidden", "true")

			$("#contactUsLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#aboutUsLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#registerLink").removeClass("active")
			$("#loginLink").removeClass("active")
		}
	</script>
 
 --%>






	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
		<div class="sidebar-header">
			<h3>Car Rental System</h3>
		</div>

		<ul class="list-unstyled components">


			<c:choose>
				<c:when test="${type=='admin'}">

					<li><a href="#">Home</a></li>
					<li><a href="#">Add Car</a></li>
					<li><a href="#">Add Car Type</a></li>
					<li><a href="#">Add Customer</a></li>
					<li><a href="#">Add Employee</a></li>

					<li><a href="#">Car Report</a></li>
					<li><a href="#">Car Type Report</a></li>
					<li><a href="#">Booking Report</a></li>
					<li><a href="#">Customer Report</a></li>
					<li><a href="#">Employee Report</a></li>
					<li><a href="#">My Accounts</a></li>
					<li><a href="#">Change Password</a></li>
				</c:when>

				<c:when test="${type=='user'}">
	
					<li><a href="#">Home</a></li>
					<li><a href="/Car_Rental_System/bookcar.jsp">Book car</a></li>
					<li><a href="#">My Bookings</a></li>
					<li><a href="#">My Accounts</a></li>
					<li><a href="#">Change Password</a></li>
					<li><a href="#">Contact</a></li>

				</c:when>


				<c:otherwise>
					
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="/Car_Rental_System/bookcar.jsp">Book Car</a></li>
					<li><a href="/Car_Rental_System/contact.jsp">Contact</a></li>
				</c:otherwise>

			</c:choose>

		</ul>
		</nav>

		<!-- Page Content Holder -->
		<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="navbar-btn">
					<span></span> <span></span> <span></span>
				</button>
				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-align-justify"></i>
				</button>


		<c:choose>
			<c:when test="${type =='admin' || type == 'user'}">
		
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="/UserLogout">Sign Out</a></li>
						
					</ul>
				</div>
			</c:when>
			
			<c:otherwise>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link"
							href="/Car_Rental_System/emailregister.jsp">Sign Up</a></li>						<li class="nav-item active"><a class="nav-link"
							href="/Car_Rental_System/login.jsp" data-toggle="modal" data-target="#exampleModal">Sign In</a></li>
					</ul>
				</div>
			</c:otherwise>
		</c:choose>
			
			
				
			</div>
			</nav>
			
			<h3 class="mt-4" style="text-align: center">Welcome ${name} </h3>
			<p class="mt-4" style="text-align: center; color:green; ">${passwordMessage} </h3> <hr>
			


			<div class="card-group m-4">
				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://www.telegraph.co.uk/content/dam/news/2017/11/11/Lam1_trans_NvBQzQNjv4BqnAdySV0BR-4fDN_-_p756cVfcy8zLGPV4EhRkjQy7tg.jpg?imwidth=1400"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">LAMBORGHINI SPORTS CAR</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: Lamborghini</li>
						<li class="list-group-item">Seats: 2</li>
						<li class="list-group-item">Price per day: 11000</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>

				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">TOYOTA RIGID</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: Toyota</li>
						<li class="list-group-item">Seats: 4</li>
						<li class="list-group-item">Price per day: 5100</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>

				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://www.carmudi.com.ph/newcars/images/brands/model/bmw/x5.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">BMW X5 2020</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: BMW</li>
						<li class="list-group-item">Seats: 4</li>
						<li class="list-group-item">Price per day: 2500</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>
			</div>

			<div class="card-group m-4">
				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://imgctcf.aeplcdn.com/thumbs/p-nc-b-ver22/images/car-data/big/audi-a6-default.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">AUDI A6</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: Audi</li>
						<li class="list-group-item">Seats: 4</li>
						<li class="list-group-item">Price per day: 2700</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>

				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://car-images.bauersecure.com/pagefiles/85985/car_valkyrie_build_50.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">ASTON MARTIN VALKYRIE</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: Aston Martin</li>
						<li class="list-group-item">Seats: 2</li>
						<li class="list-group-item">Price per day: 11000</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>

				<div class="card m-4" style="width: 18rem;">
					<img
						src="https://cnet1.cbsistatic.com/img/zAkAIC7GAdq3UklFJt8cyAlrdsc=/980x551/2015/03/03/0365401b-0c25-47e0-9eb3-ed7cfd6685a4/aston-martin-vulcan-geneva-2015-3003.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">ASTON MARTIN VULCAN</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">Company: Aston Martin</li>
						<li class="list-group-item">Seats: 2</li>
						<li class="list-group-item">Price per day: 10000</li>
					</ul>
					<div class="card-body">
						<a href="#" class="btn btn-outline-dark card-link">Book Car</a>
					</div>
				</div>
			</div>






		</div>
	</div>

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
		});
	</script>












</body>


</html>