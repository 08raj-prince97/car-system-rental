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


	<div class="container  mt-4" id="adminLoginPage">
		<a class="nav-link" style="cursor: pointer;float: right;" href="/Car_Rental_System/login.jsp">User</a>
		<h3 class="" style="text-align: center">Admin Login Page</h3>


		<form action="UserLogin" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Email ID*</label> <input type="text"
					class="form-control" required id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter Your Username"
					name="uname">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Password*</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Enter your password" required name="pass">
			</div>

			<div class="form-group">
				<button type="button" class="btn btn-dark">Login</button>
				<a class="nav-link"
					style="color: #17d7a2; display: inline-block; float: right;"
					href="/Car_Rental_System/adminforgetpassword.jsp">Forget
					Password</a>
			</div>
		</form>

	</div>

</body>
</html>