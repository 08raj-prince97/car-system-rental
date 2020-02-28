<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<%--
	response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setHeader("Expires","0");

	if(session.getAttribute("datas")==null){
		response.sendRedirect("login.jsp");
	}
--%>

	
	<%@include file="adminnavbar.html" %>
	
	<%--HOME PAGE --%>

	<div class="mt-4 form-group col-md-6" id="homePage">
		<h3 class="mt-4" style="text-align: left">Welcome to Car Rental
			Administration Panet</h3>
		<hr>
		<hr>
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Add New Car</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Add Customer</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Add Employee</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Car Repoet</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Customer Report</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Booking Report</a>

		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Employee Report</a>
		
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="/Car_Rental_System/adminchangepassword.jsp">Change Password</a>
		
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:100%;text-align: left;" href="#">Logout</a>

	</div>

	
	`
	<%--MY ACCOUNT --%>

	<div id="myAccountPage" hidden>
		<h1>MY ACCOUNT MY ACCOUNT MY ACCOUNT MY ACCOUNT</h1>
	</div>
	

	<script>
		function showHomePage() {
			$("#homePage").removeAttr("hidden")
			$("#bookCarPage").attr("hidden", "true")
			$("#myBookingPage").attr("hidden", "true")
			$("#myAccountPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#homeLink").addClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showBookCarPage() {
			$("#bookCarPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#myBookingPage").attr("hidden", "true")
			$("#myAccountPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#bookCarLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showMyBookingPage() {
			$("#myBookingPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#myAccountPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#myBookingLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showMyAccountPage() {
			$("#myAccountPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#myBookingPage").attr("hidden", "true")
			$("#contactUsPage").attr("hidden", "true")

			$("#myAccountLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#contactUsLink").removeClass("active")
		}
		function showContactUsPage() {
			$("#contactUsPage").removeAttr("hidden")
			$("#homePage").attr("hidden", "true")
			$("#bookCarPage").attr("hidden", "true")
			$("#myBookingPage").attr("hidden", "true")
			$("#myAccountPage").attr("hidden", "true")

			$("#contactUsLink").addClass("active")
			$("#homeLink").removeClass("active")
			$("#bookCarLink").removeClass("active")
			$("#myBookingLink").removeClass("active")
			$("#myAccountLink").removeClass("active")
		}
	</script>


</body>
</html>