package com.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.InsertGuideDetailsDao;
import com.login.model.GuideProfile;


@WebServlet("/GuideForm")
public class GuideForm extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String image = request.getParameter("image");
		String phone = request.getParameter("phone_no");
		String city = request.getParameter("city");
		String hobby = request.getParameter("hobby");
		String places = request.getParameter("places");
		String about_tour = request.getParameter("about_tour");
		int fee = Integer.parseInt(request.getParameter("fee"));
		String languages = request.getParameter("languages");
		
		GuideProfile guide = new GuideProfile();
		guide.setName(name);
		guide.setEmail(email);
		guide.setImage(image);
		guide.setPhone(phone);
		guide.setCity(city);
		guide.setHobby(hobby);
		guide.setPlaces(places);
		guide.setAbout_tour(about_tour);
		guide.setFee(fee);
		guide.setLanguages(languages);
		
		InsertGuideDetailsDao dao = new InsertGuideDetailsDao();
		
		if(dao.insertGuideDetails(guide)) {
			HttpSession session = request.getSession();
			//session.setAttribute("email",email);
			response.sendRedirect("MainPage.jsp");
		}
		else {
			System.out.println("Couldn't register you as guide... Please try again...");
			response.sendRedirect("GuideForm.jsp");
		}
	}

}
