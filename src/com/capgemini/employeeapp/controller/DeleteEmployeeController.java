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


@WebServlet("/deleteEmployeeController")
public class DeleteEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private EmployeeDao employeeDao;
	    private ServletContext context;

   
    public DeleteEmployeeController() {
        super();
    }
    @Override
    public void init(ServletConfig config) throws ServletException {
    	context = config.getServletContext();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String query = request.getParameter("id");
		employeeDao = (EmployeeDao) context.getAttribute("employeeDao");

		if (employeeDao.deleteEmployee(Integer.parseInt(query))) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("getAllEmployees");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
    }
}
