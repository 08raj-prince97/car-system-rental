<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" href="index.css">
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>


<title>Documentt</title>
</head>
<body>

	<%@include file="indexLayout1.jsp"%>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>

	<form method="post" action="SearchCar" onSubmit="abc()" id="form">
		<label for="startdatetimepicker">Start time</label> <input
			id="startdatetimepicker" type="text" required name="startdate">
		<label for="enddatetimepicker">End time</label> <input
			id="enddatetimepicker" type="text" required name="enddate">

		<button>submit</button>

	</form>

	</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#startdatetimepicker').datetimepicker();
			$("#startdatetimepicker").attr("minDate", new Date())
		});
		$(document).ready(function() {
			$('#enddatetimepicker').datetimepicker();
		});
		$("#startdatetimepicker").change(
				function() {
					var startTime = new Date(document
							.getElementById("startdatetimepicker").value)
					console.log(startTime, "start time")
					$("#enddatetimepicker").datepicker('option', {
						minDate : startDate
					});

				})

		function abc() {

			var startTime = new Date(document
					.getElementById("startdatetimepicker").value)
			var endTime = new Date(
					document.getElementById("enddatetimepicker").value)

			console.log("start time", startTime.getTime())
			console.log("end time", endTime.getTime())
			document.getElementById("startdatetimepicker").value = startTime
					.getTime();
			document.getElementById("enddatetimepicker").value = endTime
					.getTime();
			return true;

		}
	</script>





	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
		
	

</body>
</html>