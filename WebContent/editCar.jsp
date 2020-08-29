<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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



	<form action="UpdateCarDetails?id=${editCar[0].id}" method="post">
		<h6 class="mt-5" style="text-align: center;">Update Car Details</h6>
		<hr>

		<div class="container mt-4">

			<div class="form-group">
				<label for="exampleInputName">NUMBER*</label> <input type="text"
					class="form-control" id="exampleInputName"
					placeholder="Enter number" required name="number"
					value="${editCar[0].number}">
			</div>

			<div class="form-group">
				<label>NAME*</label> <input type="text" class="form-control"
					id="exampleInputName" placeholder="Enter name" required name="name"
					value="${editCar[0].name}">
			</div>

			<div class="form-group">
				<label for="exampleInputMobile">COMPANY*</label> <input type="text"
					class="form-control" id="exampleInputMobile"
					placeholder="Enter company" required name="company"
					value="${editCar[0].company}">
			</div>


			<div class="form-group">
				<label for="exampleInputCity">DESCRIPTION*</label> <input
					type="text" class="form-control" id="exampleInputCity"
					placeholder="Enter description" required name="description"
					value="${editCar[0].description}">
			</div>

			<div class="form-group">
				<label for="exampleInputPincode">TYPE*</label> <input type="text"
					class="form-control" id="exampleInputPincode"
					placeholder="Enter car type" required name="car_type"
					value="${editCar[0].type}">
			</div>

			<div class="form-group">
				<label for="exampleInputState">SEATES*</label> <input type="text"
					class="form-control" id="exampleInputState"
					placeholder="Enter seats" required name="seats"
					value="${editCar[0].seats}">
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">PRICE*</label> <input type="text"
					class="form-control" id="exampleInputAddress"
					placeholder="Enter price" required name="price"
					value="${editCar[0].price}">
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">IMAGE URL*</label> <input
					type="text" class="form-control" id="exampleInputAddress"
					placeholder="Enter url" required name="image"
					value="${editCar[0].image}">
			</div>

			<div class="col-md-4">
				<img src="${editCar[0].image}" class="card-img" alt="...">
			</div>

			<button  type="submit" class="btn btn-dark mt-4">Submit</button>

		</div>
	</form>


	<%@include file="indexLayout2.jsp"%>

</body>
</html>