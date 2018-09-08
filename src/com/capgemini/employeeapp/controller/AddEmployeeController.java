package com.capgemini.employeeapp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.capgemini.employeeapp.dao.EmployeeDao;
import com.capgemini.employeeapp.dao.impl.EmployeeDaoImpl;
import com.capgemini.employeeapp.model.Employee;

import sun.misc.Request;

@WebServlet("/addEmployeeController")
public class AddEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EmployeeDao employeeDao;
	private ServletContext context;

	public AddEmployeeController() {
		super();
		employeeDao = new EmployeeDaoImpl();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		context = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		int empId = Integer.parseInt(request.getParameter("empId"));
		String empName = (request.getParameter("empName"));
		double empSalary = Double.parseDouble(request.getParameter("empSalary"));
		String empDept = (request.getParameter("empDept"));

		context.setAttribute("employeeDao", employeeDao);

		Employee employee = new Employee(empId, empName, empSalary, empDept);
//		dispatcher = null;
		if (employeeDao.addEmployee(employee)) {
			response.sendRedirect("getAllEmployees");
		} else {
			RequestDispatcher dispatcher;
			dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

}
