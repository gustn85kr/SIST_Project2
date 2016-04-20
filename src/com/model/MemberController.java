package com.model;

import javax.servlet.http.HttpServletRequest;

import com.controller.Controller;
import com.controller.RequestMapping;

@Controller("memberModel")
public class MemberController {
	@RequestMapping("join.do")
	public String join(HttpServletRequest req){
		return "view/join.jsp";
	}
}
