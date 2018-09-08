<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Employee Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body bgcolor='cyan' align='center'>



<div align="center" class="mt-5">
	<div class="card" style="width: 25rem;" >
		<h3>Add Employee</h3>
		<div class="card-body">
			<form action="addEmployeeController" method="post">


	
		<br>
		<label> Employee Id:</label> <input type="number"
			name="empId" class="form-control"/><br>
		<label>Employee Name:</label> <input type="text"
			name="empName" size="15" class="form-control" /><br>
		
		
		<label> Employee Salary:</label> <input type="text" name="empSalary"
			size="15" class="form-control"/>
		<br> <label> Employee Department:</label> <select name="empDept" class="form-control">
		
					<option value="">--select--</option>
			<option value="IT">IT</option>
			<option value="ACCOUNTS">ACCOUNTS</option>
			<option value="HR">HR</option>
		</select><br>
		<Input  type="submit" value="Add Employee" class="btn btn-outline-primary btn-sm" onclick="addEmployeeController" />
	</form>
		</div>
	</div>
	
	</div>
</body>
</html>
