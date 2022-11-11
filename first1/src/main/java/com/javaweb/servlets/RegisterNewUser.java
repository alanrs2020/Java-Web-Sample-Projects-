package com.javaweb.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;
import java.util.random.RandomGenerator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.beans.User;
import com.javaweb.dao.ApplicationDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class RegisterNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Random random = new Random();
	
	public RegisterNewUser() {
		
	}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String welcome = "<h1>Welcome to Teranet!</h1>";
		String username = request.getParameter("username");
		String emailId = request.getParameter("email");
		String pass = request.getParameter("password");
		String pass2 = request.getParameter("psw-repeat");
		
		int c = random.nextInt(1000000000);
		
		if(pass.equals(pass2)) {
			ApplicationDao dao = new ApplicationDao();
			
			User user = new User(username, emailId, pass, c);
		    int result = dao.registerUser(user);
			
		    
		    
			if(result == 1) {
				response.getWriter().append(welcome +"rowsAffected" +result);	
			}else {
				request.setAttribute("error", "Something went wrong!!");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/register.jsp");
				dispatcher.include(request, response);
			}
		}else {
			request.setAttribute("error", "Password not match!");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/register.jsp");
			dispatcher.include(request, response);
		}
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
