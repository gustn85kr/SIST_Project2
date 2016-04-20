package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.UserDAO;

public class LoginOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email = req.getParameter("logEmail");
		String pwd = req.getParameter("logPwd");
		String LogCheck = "";
		String list=UserDAO.loginS(email);
		String list2=UserDAO.loginS2(email);
		int result = UserDAO.emailCheck(email);
		String dbPwd = UserDAO.pwdCheck(email);

		if (result == 0) {
			LogCheck = "noemail";
		} else {
			if (dbPwd.equals(pwd)) {
				LogCheck = "ok";
				// 로그인 성공시 로그인을 세션으로 보낸다.
				HttpSession session = req.getSession(); 
				session.setAttribute("logNo",list);
				session.setAttribute("logNickname", list2);
			} else {
				LogCheck = "nopwd";
			}
		}

		// 로그인 시 로그인 종류를 보낸다
		res.getWriter().write(String.valueOf(LogCheck));
		return null;
	}
}