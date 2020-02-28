<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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



</head>
<body>

<%
	response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setHeader("Expires","0");

	if(session.getAttribute("email")==null){
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);

	}
%>


		<%@include file="index.jsp" %>


	<%--
	<nav class="navbar navbar-dark navbar-expand-lg navbar-light bg-dark">
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">

		<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item active " id="homeLink"><span
				style="cursor: pointer;" class="nav-link " onClick="showHomePage()">HOME</span></li>
			
			<li class="nav-item" id="bookCarLink"><a class="nav-link"
				style="cursor: pointer;" href="/Car_Rental_System/bookcar.jsp">BOOK CAR</a></li>
			
			<li class="nav-item " id="myBookingLink"><span class="nav-link"
				style="cursor: pointer;" onClick="showMyBookingPage()">MY
					BOOKING </span></li>
			
			<form action="UserLogout" method="post">
			<li class="nav-item" id="logoutLink"><input type="submit" class="btn btn-dark" value="MY ACCOUNT"></li>
			</form>
			
			<li class="nav-item" id="contactUsLink"><span class="nav-link"
				style="cursor: pointer;" onClick="showContactUsPage()">CONTACT
					US</Span></li>
			<form action="UserLogout" method="post">
			<li class="nav-item" id="logoutLink"><input type="submit" class="btn btn-dark" value="LOGOUT"></li>
			</form>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</div>
	</nav>
 --%>
	
	<%--HOME PAGE --%>
		

<div id="homePage">		
<h3 class="mt-4" style="text-align: center">Welcome ${name} </h3> <hr>
<p class="mt-4" style="text-align: center; color:green; ">${passwordMessage} </h3> <hr>

	<div class="mt-4 form-group col-md-6">
	<h3 class="mt-4" style="text-align: left">Welcome to Car Rental User Panet</h3> <hr> <hr>
		<form action="bookcar.jsp" method="post">		
		<input type="submit" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" value="Book Car">
		</form>
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">My Booking</a>

		<form action="UserMyAccount" method="post">		
		<input type="submit" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" value="My Account">
		</form>
		
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="/Car_Rental_System/userchangepassword.jsp">Change Password</a>
		
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Contact Us</a>
		
		<form action="UserLogout" method="post">		
		<input type="submit" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" value="Logout">
		</form>
	</div>
</div>

	<%--BOOK CAR --%>

	<div class="container  mt-4" id="bookCarPage" hidden>
		<h3 class="" style="text-align: center">Book Your Car</h3>
		<form action="Login" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Pick Up Date*</label> <input
					type="date" class="form-control" id="exampleInputEmail1"
					placeholder="Enter Pick Up Date" required name="fromdate">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Drop Off Date*</label> <input
					type="date" class="form-control" id="exampleInputPassword1"
					placeholder="Enter Drop Off Date" required name="todate">
			</div>

			<div class="form-group">
				<button type="button" class="btn btn-dark">Search Car</button>
			</div>
		</form>

	</div>
	
	<%--MY BOOKING --%>

	<div id="myBookingPage" hidden>
		<h1>MY BOOKING MY BOOKING MY BOOKING MY BOOKING</h1>
	</div>
	


	<%--CONTACT US --%>

	<div id="contactUsPage" hidden>
		<h1>CONTECT USCONTECT US CONTECT US CONTECT US CONTECT US CONTECT
			US</h1>
	</div>
  

	
	<script>
		function showHomePage() {
			$("#homePage").removeAttr("hidden")
			$("#contactUsPage").attr("hidden", "true")

			$("#homeLink").addClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		
		function showContactUsPage() {
			$("#contactUsPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")

			$("#contactUsLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
		}
	</script>


</body>
</html>