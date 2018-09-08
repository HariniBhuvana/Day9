<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Insert title here</title>
        <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        
    </head>
    <body>
       
       
        <div class="card mx-auto mt-3" align="center" style="width: 30rem;">
         <h3 class="mx-auto  m-3">Edit Employee</h3>
        <form action="editEmployee" method="post" class="mx-auto ml-5 mr-5 mt-0 card-body" >
            <label>Employee ID:</label> <input type="number" readonly class="form-control" value="${editEmployee.employeeId }" size="10" name="empId" required /><br>
            <label>Employee Name:</label> <input type="text" class="form-control" name="empName" value="${editEmployee.employeeName }"
                required /> <br>
            <label>Employee Salary:</label> <input type="number" class="form-control" name="empSalary"
                required value="${editEmployee.employeeSalary }" /><br> <label>Employee Department:</label> 
            <select
                name="empDepartment" class="form-control" required >
                <option value="${editEmployee.employeeDept }">${editEmployee.employeeDept }</option>
                <option value="IT">IT</option>
                <option value="ADMIN">ADMIN</option>
                <option value="HR">HR</option>
                <option value="ACCOUNTS">ACCOUNTS</option>
            </select>
            
            
            <br> <button type="submit" class="btn btn-outline-primary btn-sm">Edit Employee</button>
        	<c:if test="${edited == true}">
        	<br>
        	<br>
				 <div class="alert alert-success" role="alert">
						Successful <a href="getAllEmployees">Click here!!</a>
				 </div>		
        	</c:if>
        </form>
        </div>
    </body>
</html>