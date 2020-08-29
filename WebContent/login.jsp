<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<%@include file="bootStrapLink.jsp"%>

</head>
<body>


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
					<input type="text" id="login" class="fadeIn second" required
						name="email" placeholder="Email"> <input type="password"
						id="password" class="fadeIn third" required name="pass"
						placeholder="Password"> <input type="submit"
						class="fadeIn fourth" value="Log In">
				</form>

				<p class="" style="color: red;">${error}</p>
				<h6 class="" style="text-align: center; color: green;">${success1}<h6>
						<h6 class="" style="text-align: center; color: green;">${success2}<h6>

								<!-- Remind Passowrd -->
								<div id="formFooter">
									<a class="underlineHover"
										href="/Car_Rental_System/forgetPassword.jsp">Forgot
										Password?</a>
								</div>
			</div>
		</div>
	</div>


</body>
</html>