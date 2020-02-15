package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.InsertUserIntoDBDao;
import com.login.model.UserModel;

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("psw");
		
		UserModel user = new UserModel();
		user.setName(name);
		user.setName(email);
		user.setName(password);
		
		InsertUserIntoDBDao dao = new InsertUserIntoDBDao();
		
		if(dao.insertUserDetails(user)) {
			HttpSession session = request.getSession();
			//session.setAttribute("name",name); // future me check krna ki yha *name* attribute kam aa skta hai ya fir *email*
			session.setAttribute("email",email);
			
			response.sendRedirect("MainPage.jsp");
		}
		else {
			System.out.print("Abe nahi insert hua data\n");
			response.sendRedirect("Login.jsp");
		}
		
//		if(dao.insertUserDetails(name,email,password)) {
//			HttpSession session = request.getSession();
//			//session.setAttribute("name",name); // future me check krna ki yha *name* attribute kam aa skta hai ya fir *email*
//			session.setAttribute("email",email);
//			
//			response.sendRedirect("MainPage.jsp");
//		}
//		else {
//			System.out.print("Abe nahi insert hua data\n");
//			response.sendRedirect("Login.jsp");
//		}
	}

}
