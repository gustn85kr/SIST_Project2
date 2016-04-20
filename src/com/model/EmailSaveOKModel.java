package com.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailSaveOKModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email=req.getParameter("logEmail");
		String logSave=req.getParameter("logSave");
		String emailSave="";
		System.out.println("email:"+email);
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
					
					Cookie[] cookies = req.getCookies();            // 요청정보로부터 쿠키를 가져온다.
					System.out.println("현재 설정된 쿠키의 개수 : " + cookies.length);    // 쿠키가 저장된 배열의 길이를 가져온다.
					for(int i = 0 ; i<cookies.length; i++){                            // 쿠키 배열을 반복문으로 돌린다.
					System.out.println(i + "번째 쿠키 이름 : " + cookies[i].getName());            // 쿠키의 이름을 가져온다.
					System.out.println(i + "번째 쿠키에 설정된 값 : " + cookies[i].getValue());    // 쿠키의 값을 가져온다.
				}
			} else{
					Cookie logEmailCookie = new Cookie("logEmail_Cookie", "");
					// 쿠키를 생성한다. 이름:testCookie, 값 : Hello Cookie
					logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
					// 쿠키의 유효기간을 365일로 설정한다.
					logEmailCookie.setPath("/");
					// 쿠키의 유효한 디렉토리를 "/" 로 설정한다.
					res.addCookie(logEmailCookie);
					// 클라이언트 응답에 쿠키를 추가한다.
					
					Cookie[] cookies = req.getCookies();            // 요청정보로부터 쿠키를 가져온다.
					System.out.println("현재 설정된 쿠키의 개수 : " + cookies.length);    // 쿠키가 저장된 배열의 길이를 가져온다.
					for(int i = 0 ; i<cookies.length; i++){                            // 쿠키 배열을 반복문으로 돌린다.
					System.out.println(i + "번째 쿠키 이름 : " + cookies[i].getName());            // 쿠키의 이름을 가져온다.
					System.out.println(i + "번째 쿠키에 설정된 값 : " + cookies[i].getValue());    // 쿠키의 값을 가져온다.
				}
			}
		} catch (Exception e) {
			System.out.println("catch"+e.getMessage());
		}
		Cookie[] cookies = req.getCookies();
	    emailSave=cookies[1].getValue();
	    res.getWriter().write(String.valueOf(emailSave));
	    
		return null;
	}

}
