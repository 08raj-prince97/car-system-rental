<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%
	response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma", "no-cache");
	response.setHeader("Expires","0");

	if(session.getAttribute("email")==null){
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);

	}
%>
	
	<%@ include file="usernavbar.html" %>
	
		

`	<%--MY ACCOUNT --%>

	<div id="myAccountPage">
		<h3 class="" style="text-align: center">Your Account Detalis</h3>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Mobile</th>
      <th scope="col">Email</th>
      <th scope="col">City</th>
      <th scope="col">Pincode</th>
      <th scope="col">Age</th>
      <th scope="col">Address</th>
    </tr>
  </thead>

  <tbody>
  <c:forEach var = "i" begin = "0" end = "${datas.size() -1}">
      
          <tr>
      <th scope="row">${i+1}</th>
      <td>${datas[i].name}</td>
      <td>${datas[i].mobile}</td>
      <td>${datas[i].email}</td>
      <td>${datas[i].city}</td>
      <td>${datas[i].pincode}</td>
      <td>${datas[i].state}</td>
      <td>${datas[i].address}</td>		
    </tr>
   
      </c:forEach>
   
  </tbody>
</table><hr>
		<a type="button" class="btn btn-dark btn-lg mt-2 mb-2" style="border-radius:7.3rem;width:20%;" href="/Car_Rental_System\updateuserdetails1.jsp">Update Your Details</a>


</div>
	


</body>
</html>