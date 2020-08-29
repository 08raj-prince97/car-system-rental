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


	<form action="UpdateUserDetails1" method="post">
		<c:choose>
			<c:when test="${type=='admin'}">
				<h6 class="mt-5" style="text-align: center;">Update User
					Details</h6>
			</c:when>
			<c:when test="${type=='user'}">
				<h6 class="mt-5" style="text-align: center;">Update Personal
					Details</h6>
			</c:when>
		</c:choose>
		<hr>

		<div class="container mt-4">

			<div class="form-group">
				<label for="exampleInputName">NAME*</label> <input type="text"
					class="form-control" id="exampleInputName" placeholder="Enter name"
					required name="name" value="${datas[0].name}">
			</div>

			<div class="form-group">
				<label>EMAIL*</label> <input type="email" class="form-control"
					id="exampleInputName" value="${datas[0].email}" disabled>
			</div>

			<div class="form-group">
				<label for="exampleInputMobile">MOBILE*</label> <input type="text"
					class="form-control" id="exampleInputMobile"
					placeholder="Enter mobile" required name="mobile"
					value="${datas[0].mobile}">
			</div>


			<div class="form-group">
				<label for="exampleInputCity">CITY*</label> <input type="text"
					class="form-control" id="exampleInputCity" placeholder="Enter city"
					required name="city" value="${datas[0].city}">
			</div>

			<div class="form-group">
				<label for="exampleInputPincode">PIN CODE*</label> <input
					type="text" class="form-control" id="exampleInputPincode"
					placeholder="Enter pin code" required name="pincode"
					value="${datas[0].pincode}">
			</div>

			<div class="form-group">
				<label for="exampleInputState">STATE*</label> <input type="text"
					class="form-control" id="exampleInputState"
					placeholder="Enter state" required name="state"
					value="${datas[0].state}">
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">ADDRESS*</label> <textarea type="text"
					class="form-control" id="exampleInputAddress"
					placeholder="Enter address" required name="address"
					>${datas[0].address}</textarea>
			</div>

			<button type="submit" class="btn btn-dark">Submit</button>

		</div>
	</form>
	<%@include file="indexLayout2.jsp"%>


</body>
</html>