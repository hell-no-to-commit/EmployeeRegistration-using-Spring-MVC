<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<title>REGISTER EMPLOYEE</title>
</head>
<body>

	<h1 class="text-center mt-3">${abc}</h1>

	<div class="container mt-3">
		<%-- <div class="text-center">
			<div class="alert alert-danger" role="alert">
				<form:errors path="employee.*" />
			</div>
		</div> --%>
		<form action="processform" method="post">
			<div class="form-group">
				<label for="InputEmployeeName"><h6>Employee Name</h6></label> <input
					name="empName" type="text" class="form-control" id="empName"
					placeholder="Enter Employee Name">
			</div>
			<div class="form-group">
				<label for="InputEmployeeDesignation"><h6>Employee Designation</h6></label> <input
					name="empDesignation" type="text" class="form-control"
					id="empDesignation" placeholder="Enter Employee Designation">
			</div>
			<div class="form-group">
				<label for="InputEmployeeSalary"><h6>Employee Salary</h6></label> <input
					name="empSalary" type="number" class="form-control" id="empSalary"
					placeholder="Enter Employee Salary">
			</div>
			<div class="form-group">
				<label for="InputEmployeeContact"><h6> Employee Contact Number</h6></label> <input
					name="empContact" type="number" class="form-control"
					id="empContact" placeholder="Enter Employee Contact Number">
			</div>

			<div class="card">
				<div class="card-body">
					<h6 class="card-title">Address Details</h6>
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="inputFlat">Flat</label> <input type="text"
								class="form-control" id="inputFlat" placeholder="Enter Flat"
								name="empAddress.flatNumber">
						</div>
						<div class="form-group col-md-3">
							<label for="inputStreet">Street</label> <input type="text"
								class="form-control" id="inputStreet" placeholder="Enter Street"
								name="empAddress.street">
						</div>
						<div class="form-group col-md-3">
							<label for="inputCity">City</label> <input type="text"
								class="form-control" id="inputCity" placeholder="Enter City"
								name="empAddress.city">
						</div>
						<div class="form-group col-md-3">
							<label for="inputPin">Zip</label> <input type="number"
								class="form-control" id="inputPin" placeholder="Enter Zip"
								name="empAddress.pincode">
						</div>
					</div>

				</div>
			</div>


			<div class="card mt-3">
				<div class="card-body">
					<h6 class="card-title">Beneficiary Details</h6>
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="inputBenefName">Name</label> <input type="text"
								class="form-control" id="inputBenefName"
								placeholder="Enter Beneficiary Name"
								name="empBeneficiaryName.benefName">
						</div>
						<div class="form-group col-md-3">
							<label for="inputBenefAge">Age</label> <input type="number"
								class="form-control" id="inputBenefAge"
								placeholder="Enter Beneficiary Age"
								name="empBeneficiaryName.benefAge">
						</div>
						<div class="form-group col-md-3">
							<label for="inputBenefRelation">Relation</label> <input
								type="text" class="form-control" id="inputBenefRelation"
								placeholder="Enter relation"
								name="empBeneficiaryName.benefRelation">
						</div>
						<div class="form-group col-md-3">
							<label for="inputBenefContact">Contact</label> <input
								type="number" class="form-control" id="inputBenefContact"
								placeholder="Enter Beneficiary Contact"
								name="empBeneficiaryName.benefContact">
						</div>
					</div>

				</div>

			</div>


			<div class="container text-center">
				<div class="text-center mt-3">
					<button type="submit" class="btn btn-primary btn-lg">Submit</button>
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

	</form>


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