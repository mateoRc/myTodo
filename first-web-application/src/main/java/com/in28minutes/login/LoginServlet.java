package com.in28minutes.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.in28minutes.todo.TodoService;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private LoginService userValidationService = new LoginService();
	private TodoService todoService = new TodoService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		testing
//		PrintWriter writer = response.getWriter();
//		System.out.println(request.getParameter("name"));
//		String name = request.getParameter("name");

		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		if (userValidationService.isUserValid(name, password)) {
			// TodoServlet todo.do
			request.getSession().setAttribute("name", name);
			response.sendRedirect("/list-todos.do");
		} else {
			request.setAttribute("errorMessage", "Invalid Credentials!");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
	}
	
}
