<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@include file="bootStrapLink.jsp" %>
<%@include file="indexLayoutLink.jsp" %>

</head>
<body>




<%@include file="indexLayout1.jsp" %>

<div class="container  mt-5" id="loginPage">
		<h3 class="" style="text-align: center">Register Your Email ID</h4>
		<p class="" style="text-align: center; color:red;">${message1}</p>
			

	<form action="EmailRegister" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">EMAIL</label> <input
				required type="email" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="Enter email" name="email">
		</div>
		<button type="submit" class="btn btn-dark">Register</button>
	</form>

</div>

<%@include file="indexLayout2.jsp" %>


</body>
</html>