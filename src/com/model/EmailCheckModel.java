package com.model;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;

public class EmailCheckModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		System.out.println(result);
		res.getWriter().write(String.valueOf(result));
		return null;
	}
	
	
}
