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

</head>
<body>

<%@ include file="usernavbar.html" %>

	<div class="container mt-4">
		<h3 class="" style="text-align: center">Change Password</h3>

		<form action="UserChangePassword" method="post" oninput='password2.setCustomValidity(password2.value != password1.value ? "Passwords do not match." : "")'>

			<div class="form-group">
				<label for="exampleInputOldPassword">Old Password*</label> <input required
					type="password" class="form-control" id="exampleInputOldPassword"
					placeholder="Enter old password" name="oldpassword">
			</div>

			<div class="form-group">
				<label for="exampleInputNewPassword">New Password*</label> <input required
					type="password" class="form-control" id="exampleInputNewPassword"
					placeholder="Enter new password" name="password1">
			</div>

			<div class="form-group">
				<label for="exampleInputConfirmPassword">Confirm Password*</label> <input
					type="password" class="form-control" required
					id="exampleInputConfirmPassword" placeholder="Enter new password"
					name="password2">
			</div>

			<div class="form-group">
				<input type="submit" class="btn btn-dark" value="submit">
			</div>
		</form>
	</div>
</body>
</html>