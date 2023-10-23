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
	<%-- <h1 class="text-center">${abc}</h1> --%>
	<!-- <h1 class="text-center mt-5">LIST OF EMPLOYEES</h1> -->

	<div class="text-center mt-5">
		<div class="card-body">
			<h3>Hello ${employee.empName }, following are your details</h3>
		</div>
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
						</tr>
					</thead>

					<tbody>
						<%-- <c:forEach items="${employees}" var="emp">

							<tr>
								<th scope="row">${emp.empId}</th>
								<td>${emp.empName}</td>
								<td>${emp.empDesignation}</td>
								<td>${emp.empSalary}</td>
								<td>${emp.empContact}</td>
							</tr>
						</c:forEach> --%>
						<tr>
							<th scope="row">${employee.empId}</th>
							<td>${employee.empName}</td>
							<td>${employee.empDesignation}</td>
							<td>${employee.empSalary}</td>
							<td>${employee.empContact}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="container">
			<div class="form-row mt-5">
				<div class="card mx-auto" style="width: 50%;">
					<div class="card-body">
						<h3>BENEFICIARY DETAILS</h3>
					</div>
					<div>
						<table class="table">

							<tbody>
								<tr>
									<td>NAME</td>
									<td>${employee.empBeneficiaryName.benefName }</td>
								</tr>

								<tr>
									<td>AGE</td>
									<td>${employee.empBeneficiaryName.benefAge}</td>
								</tr>

								<tr>
									<td>RELATIONSHIP</td>
									<td>${employee.empBeneficiaryName.benefRelation}</td>
								</tr>

								<tr>
									<td>CONTACT NUMBER</td>
									<td>${employee.empBeneficiaryName.benefContact}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="card mx-auto" style="width: 50%;">
					<div class="card-body">
						<h3>ADDRESS DETAILS</h3>
					</div>
					<div>
						<table class="table">

							<tbody>
								<tr>
									<td>FLAT NUMBER</td>
									<td>${employee.empAddress.flatNumber}</td>
								</tr>

								<tr>
									<td>STREET</td>
									<td>${employee.empAddress.street}</td>
								</tr>

								<tr>
									<td>CITY</td>
									<td>${employee.empAddress.city}</td>
								</tr>

								<tr>
									<td>PINCODE</td>
									<td>${employee.empAddress.pincode}</td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<div class="text-center mt-4">
			<a href="delete/${employee.empId}">
				<button type="button" class="btn btn-outline-danger">DELETE
					YOUR PROFILE</button>
			</a>
		</div>
		
		<div class="text-center mt-4">
			<a href="employee_list">
				<button type="button" class="btn btn-outline-info">SHOW EMPLOYEE LIST</button>
			</a>
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