package com.sist.model;


import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.ListVO;
import com.sist.dao.OnmDAO;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

@Controller("mainController")
public class MainController {
	@RequestMapping("intro.do")
	public String intro(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return "intro";
	}

	@RequestMapping("onm.do")
	public String onm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		List<ListVO> list = new ArrayList<ListVO>();
		System.out.println("userno" + (int) session.getAttribute("userno"));
		list = OnmDAO.listSearch((int) session.getAttribute("userno"));
		for (ListVO vo : list) {
			String tmp = vo.getHtml();
			vo.setHtml(HashingHTML.htmlTostr(tmp));
			System.out.println(vo.getHtml());
		}
		req.setAttribute("list", list);
		return "onm";
	}
}
