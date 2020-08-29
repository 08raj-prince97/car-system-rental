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
	response.setHeader("Expires","0");

	if(session.getAttribute("email")==null){
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
	%>


	<%@include file="indexLayout1.jsp"%>


	<form method="post" action="AddCar">
		<h6 class="mt-5" style="text-align: center;">Car Entry</h6>
		<hr>

		<div class="container mt-4">

			<div class="form-group">
				<label for="exampleInputName">NAME*</label> <input type="text"
					class="form-control" id="exampleInputName" placeholder="Enter name"
					required name="name">
			</div>

			<div class="form-group">
				<label for="exampleInputMobile">COMPANY*</label> <input type="text"
					class="form-control" id="exampleInputMobile"
					placeholder="Enter company" required name="company">
			</div>


			<div class="form-group">
				<label for="exampleInputCity">TYPE*</label> <select
					class="form-control" id="exampleInputName" required name="carType">
					<option selected disabled value="">Select car type</option>

					<c:forEach items="${car_type}" var="i">
						<option value=${i}>${i}</option>
					</c:forEach>
				</select>
			</div>

			<div class="form-group">
				<label for="exampleInputPincode">NUMBER*</label> <input type="number"
					class="form-control" id="exampleInputPincode"
					placeholder="Enter number" required name="number">
			</div>

			<div class="form-group">
				<label for="exampleInputState">DESCRIPTION*</label> <textarea
					type="text" class="form-control" id="exampleInputState"
					placeholder="Enter description" required name="description"></textarea>
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">SEATS*</label> <input type="number"
					class="form-control" id="exampleInputAddress"
					placeholder="Enter seats" required name="seats">
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">PRICE/h*</label> <input type="number"
					class="form-control" id="exampleInputAddress"
					placeholder="Enter price" required name="price">
			</div>

			<div class="form-group">
				<label for="exampleInputAddress">IMAGE URL*</label> <input
					type="url" class="form-control" id="exampleInputAddress"
					placeholder="Enter image url" required name="image">
			</div>

			<button type="submit" class="btn btn-dark">Submit</button>
		</div>
	</form>

	<%@include file="indexLayout2.jsp"%>



</body>
</html>