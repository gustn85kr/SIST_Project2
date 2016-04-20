package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
			HttpSession session = req.getSession(); 
			session.removeAttribute("logNo");
			session.removeAttribute("logNickname");
			session.invalidate();
			return "intro.jsp";
	}

}
