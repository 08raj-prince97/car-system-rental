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

<%@ include file="usernavbar.html" %>
		

		<form action="UpdateUserDetails1" method="post"3>
			<h6 class="mt-5" style="text-align: center;">Update Personal Details</h6><hr>
					
			<div class="container mt-4">

				<div class="form-group">
					<label for="exampleInputName">NAME*</label> <input type="text"
						class="form-control" id="exampleInputName"
						placeholder="Enter name" required name="name">
				</div>

				<div class="form-group">
					<label for="exampleInputMobile">MOBILE*</label> <input type="text"
						class="form-control" id="exampleInputMobile"
						placeholder="Enter password" required name="mobile">
				</div>


				<div class="form-group">
					<label for="exampleInputCity">CITY*</label> <input type="text"
						class="form-control" id="exampleInputCity"
						placeholder="Enter city" required name="city">
				</div>

				<div class="form-group">
					<label for="exampleInputPincode">PIN CODE*</label> <input
						type="text" class="form-control" id="exampleInputPincode"
						placeholder="Enter pin code" required name="pincode">
				</div>

				<div class="form-group">
					<label for="exampleInputState">STATE*</label> <input type="text"
						class="form-control" id="exampleInputState"
						placeholder="Enter state" required name="state">
				</div>

				<div class="form-group">
					<label for="exampleInputAddress">ADDRESS*</label> <input
						type="text" class="form-control" id="exampleInputAddress"
						placeholder="Enter address" required name="address">
				</div>

				<button type="submit" class="btn btn-dark">Submit</button>
			</div>
		</form>


</body>
</html>