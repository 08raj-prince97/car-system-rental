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


	<form action="UpdateUserDetails" method="post"
		oninput='password2.setCustomValidity(password2.value != password1.value ? "Passwords do not match." : "")'>
		<h6 class="mt-5" style="text-align: center;">Update Personal
			Details</h6>
		<hr>

		<div class="container form-group">
			<label for="exampleInputPassword">NEW PASSWORD*</label> <input
				type="password" class="form-control" id="exampleInputPassword"
				placeholder="Enter new password" required name="password1"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
		</div>

		<div class="container mt-4">

			<div class="form-group">
				<label for="exampleInputName">NAME*</label> <input type="text"
					class="form-control" id="exampleInputName" placeholder="Enter name"
					required name="name">
			</div>

			<div class="form-group">
				<label for="exampleInputMobile">MOBILE*</label> <input type="text"
					class="form-control" id="exampleInputMobile"
					placeholder="Enter password" required name="mobile">
			</div>


			<div class="form-group">
				<label for="exampleInputCity">CITY*</label> <input type="text"
					class="form-control" id="exampleInputCity" placeholder="Enter city"
					required name="city">
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
				<label for="exampleInputAddress">ADDRESS*</label> <input type="text"
					class="form-control" id="exampleInputAddress"
					placeholder="Enter address" required name="address">
			</div>

			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>

	<%@include file="indexLayout2.jsp"%>


</body>
</html>