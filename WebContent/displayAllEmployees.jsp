<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

	
	
	<div align="center" class="mt-5">
	<div class="card" style="width: 80rem;" >
	<h3>Employee Details</h3>
		<div class="card-body">
	<hr><br>
	<table border="1">
		<tr>
		     <th>Employee Id</th>
		     <th>Employee Name</th>
		     <th>Employee Salary</th>
		     <th>Employee Department</th>
		     <th>Update Employee</th>
		     <th>Delete Employee</th>
		</tr>
		<c:forEach var="employee" items="${requestScope.employeesList}">
			<tr>
			    <td>${employee.employeeId}</td>
			    <td>${employee.employeeName}</td>
			    <td>${employee.employeeSalary}</td>
			    <td>${employee.employeeDept}</td>	
			    <td><a href="editEmployee?id=${employee.employeeId }">Edit</a></td>
			    <td><a href="deleteEmployeeController?id=${employee.employeeId}">Delete</a></td>
			    		    
			</tr>
		</c:forEach>		
	</table>
	<br>
	<br>
	<input type="submit" value="Add Employee" class="btn btn-outline-primary btn-sm" />
	</div>
	</div>
	
</body>
</html>