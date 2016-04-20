package com.model;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class IntroModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
/*		HttpSession session=req.getSession();
		String email = (String)session.getAttribute("email");	    
	    
	    //아이디 확인하기
	    //int check= UserDAO.confirmEmail(email);
		req.setAttribute("email", email);*/
		
		return "intro.jsp";
	}

}
