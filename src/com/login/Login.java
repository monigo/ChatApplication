package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;
import com.login.model.UserModel;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("psw");
		
		UserModel user  = new UserModel();
		user.setEmail(email);
		user.setPassword(pass);
		
		LoginDao dao = new LoginDao();
		
		if(dao.checkLoginCredentials(user)) {
			HttpSession session = request.getSession();
			session.setAttribute("email",email);
			
			response.sendRedirect("MainPage.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
//		if(dao.checkLoginCredentials(email,pass)) {
//			HttpSession session = request.getSession();
//			session.setAttribute("email",email);
//			
//			response.sendRedirect("MainPage.jsp");
//		}
//		else {
//			response.sendRedirect("Login.jsp");
//		}
	}

}
