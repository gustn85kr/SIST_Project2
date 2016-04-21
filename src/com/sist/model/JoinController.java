package com.sist.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

@Controller("joinController")
public class JoinController {
	@RequestMapping("emailCheckOK.do")
	public String emailCehckOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		res.getWriter().write(String.valueOf(result));
		return "ajax";
	}
	@RequestMapping("emailSaveOK.do")
	public String emailSaveOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email=req.getParameter("logEmail");
		String logSave=req.getParameter("logSave");
		String emailSave="";
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
		return "ajax";
	}
	@RequestMapping("emailSaveGet.do")
	public String emailSaveGet(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Cookie[] cookies = req.getCookies();
	    String emailSave=cookies[1].getValue();
	    res.getWriter().write(String.valueOf(emailSave));
		return "ajax";
	}
	@RequestMapping("joinOK.do")
	public String joinOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String nickname = req.getParameter("nickname");
		
		UserDTO d = new UserDTO();
			
		//회원가입 데이터 넘기기
		d.setEmail(email);
		d.setPwd(pwd);
		d.setNickname(nickname);
			
		// DB연동해서 insertUser 실행시키기 
		UserDAO.insertUser(d);
		
		return "ajax";
	}
}
