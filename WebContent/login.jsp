<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
     
<div class="container  mt-4" id="loginPage">
		<a class="nav-link" style="cursor: pointer; float: right;" href="/Car_Rental_System/adminlogin.jsp">Admin</a>
		<h3 class="" style="text-align: center">User Login Page</h3>
		<form action="UserLogin" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input 
					required type="email" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter email" name="email">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input 
					type="password" class="form-control" id="exampleInputPassword1"
					required placeholder="Password" name="pass">
			</div>

			<button type="submit" class="btn btn-dark">Login</button>
			<a class="nav-link"
				style="color: #17d7a2; display: inline-block; float: right;"
				href="/Car_Rental_System/forgetpassword.jsp">Forget Password</a>
				
				<p class="" style="color:red;">${error}</p>
				<h6 class="" style="text-align: center;color: green;">${success1}<h6>
				<h6 class="" style="text-align: center;color: green;">${success2}<h6>
				
		</form>

	</div>
	
--%>



	<link rel="stylesheet" href="login.css">

	<div class="wrapper fadeInDown">
		<div id="formContent">
			<!-- Tabs Titles -->
			<div id="formFooter">
				<h3>Login</h3>
			</div>

			<!-- Icon -->
			<div class="fadeIn first">

				<!-- Login Form -->
				<form action="UserLogin" method="post">
					<input type="text" id="login" class="fadeIn second" required name="email" placeholder="Email">
					<input type="password" id="password" class="fadeIn third" required name="pass" placeholder="Password">
					<input type="submit" class="fadeIn fourth" value="Log In">
				</form>

				<p class="" style="color: red;">${error}</p>
				<h6 class="" style="text-align: center; color: green;">${success1}<h6>
						<h6 class="" style="text-align: center; color: green;">${success2}<h6>

								<!-- Remind Passowrd -->
								<div id="formFooter">
									<a class="underlineHover"
										href="/Car_Rental_System/forgetpassword.jsp">Forgot
										Password?</a>
								</div>
			</div>
		</div>
		</div>
</body>
</html>