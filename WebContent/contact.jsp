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

	

	<%@include file="indexLayout1.jsp"%>


	<%--CONTACT --%>

	<div id="contactPage">

		<form action="Contact" method="post">
			<h4 class="mt-5" style="text-align: center;">Contact Us</h4>
			<hr>

			<div class="container mt-4">



				<c:choose>
					<c:when test="${type=='user'}">
						<div class="form-group">
							<label for="exampleInputName">NAME*</label> <input type="text"
								class="form-control" id="exampleInputName"
								placeholder="Enter name" required name="name"
								value="${datas[0].name}" disabled>
						</div>

						<div class="form-group">
							<label for="exampleInputMobile">MOBILE*</label> <input
								type="text" class="form-control" id="exampleInputMobile"
								placeholder="Enter mobile" required name="mobile"
								value="${datas[0].mobile}" disabled>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail">EMAIL*</label> <input type="email"
								class="form-control" id="exampleInputEmail"
								placeholder="Enter email" required name="email"
								value="${datas[0].email}" disabled>
						</div>
					</c:when>

					<c:otherwise>
						<div class="form-group">
							<label for="exampleInputName">NAME*</label> <input type="text"
								class="form-control" id="exampleInputName"
								placeholder="Enter name" required name="name">
						</div>

						<div class="form-group">
							<label for="exampleInputMobile">MOBILE*</label> <input
								type="text" class="form-control" id="exampleInputMobile"
								placeholder="Enter mobile" required name="mobile">
						</div>

						<div class="form-group">
							<label for="exampleInputEmail">EMAIL*</label> <input type="email"
								class="form-control" id="exampleInputEmail"
								placeholder="Enter email" required name="email">
						</div>
					</c:otherwise>
				</c:choose>

				<div class="form-group">
					<label for="exampleInputCity">SUBJECT*</label> <input type="text"
						class="form-control" id="exampleInputCity"
						placeholder="Enter city" required name="subject">
				</div>

				<div class="form-group">
					<label for="exampleInputAddress">MESSAGE*</label>
					<textarea class="form-control" rows="5" id="exampleInputAddress"
						placeholder="Write your message" required name="message"></textarea>
				</div>

				<button type="submit" class="btn btn-dark">Submit</button>
			</div>
		</form>
	</div>

	<%@include file="indexLayout2.jsp"%>




</body>
</html>