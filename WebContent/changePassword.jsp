<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@include file="bootStrapLink.jsp"%>
<%@include file="indexLayoutLink.jsp"%>

</head>
<body>

	<%
		response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");

		if (session.getAttribute("email") == null) {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	%>


	<%@include file="indexLayout1.jsp"%>


	<div class="container mt-4">
		<h3 class="" style="text-align: center">Change Password</h3>
		<p class="" style="color: red; text-align: center">${error}</p>
		<hr>

		<form action="UserChangePassword" method="post"
			oninput='password2.setCustomValidity(password2.value != password1.value ? "Passwords do not match." : "")'>

			<div class="form-group">
				<label for="exampleInputOldPassword">Old Password*</label> <input
					required type="password" class="form-control"
					id="exampleInputOldPassword" placeholder="Enter old password"
					name="oldpassword">
			</div>

			<div class="form-group">
				<label for="exampleInputNewPassword">New Password*</label> <input
					required type="password" class="form-control"
					id="exampleInputNewPassword" placeholder="Enter new password"
					name="password1"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>

			<div class="form-group">
				<label for="exampleInputConfirmPassword">Confirm Password*</label> <input
					type="password" class="form-control" required
					id="exampleInputConfirmPassword" placeholder="Confirm new password"
					name="password2">
			</div>

			<div class="form-group">
				<input type="submit" class="btn btn-dark" value="submit">
			</div>
		</form>
	</div>


	<%@include file="indexLayout2.jsp"%>



</body>
</html>