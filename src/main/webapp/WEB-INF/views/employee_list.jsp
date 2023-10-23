<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js" />"></script>

<title>Registration Successful</title>
</head>

<body>
	<h1 class="text-center mt-5">LIST OF EMPLOYEES</h1>
	<div class="text-center mt-5">
		<div class="card mx-auto" style="width: 50%;">
			<div class="container">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<!-- <th scope="col">S.No.</th> -->
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Designation</th>
							<th scope="col">Salary</th>
							<th scope="col">Contact</th>
							<th scope="col">City</th>
							<th scope="col">Beneficiary</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employees}" var="emp">
							<tr>
								<th scope="row">${emp.empId}</th>
								<td>${emp.empName}</td>
								<td>${emp.empDesignation}</td>
								<td>${emp.empSalary}</td>
								<td>${emp.empContact}</td>
								<td>${emp.empAddress.city}</td>
								<td>${emp.empBeneficiaryName.benefName}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="container text-center">
			<div class="text-center mt-3">
				<a href="/employeeRegistration">
					<button type="button" class="btn btn-info btn-lg">Back to
						Home</button>
				</a>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>