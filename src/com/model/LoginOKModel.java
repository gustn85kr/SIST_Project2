package com.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;

public class LoginOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String email=req.getParameter("logEmail");
	    String pwd=req.getParameter("logPwd");
	    String logSave=req.getParameter("logSave");
	    String chk="";
	    try {
			if (logSave.equals("1")) {
				Cookie logEmailCookie = new Cookie("logEmail_Cookie", email);
				// 쿠키를 생성한다. 이름:testCookie, 값 : Hello Cookie
				logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
				// 쿠키의 유효기간을 365일로 설정한다.
				logEmailCookie.setPath("/");
				// 쿠키의 유효한 디렉토리를 "/" 로 설정한다.
				res.addCookie(logEmailCookie);
				// 클라이언트 응답에 쿠키를 추가한다.
			} 
		} catch (Exception e) {
			System.out.println(e.getMessage());
			Cookie logEmailCookie = new Cookie("logEmail_Cookie", "");
			// 쿠키를 생성한다. 이름:testCookie, 값 : Hello Cookie
			logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
			// 쿠키의 유효기간을 365일로 설정한다.
			logEmailCookie.setPath("/");
			// 쿠키의 유효한 디렉토리를 "/" 로 설정한다.
			res.addCookie(logEmailCookie);
			// 클라이언트 응답에 쿠키를 추가한다.
		}
	    System.out.println(email);
	    int result = UserDAO.emailCheck(email);
	    String dbPwd = UserDAO.pwdCheck(email);
	    if(result==0){
	    	chk="noemail";
	    }
	    else{
	    	if(dbPwd.equals(pwd)){
	    		chk="ok";
	    		
	    		return "onm.jsp";
	    	}else{
	    		chk="nopwd";
	    	}
	    }
	    req.setAttribute("check", chk);
		return "intro.jsp";
	}

}
