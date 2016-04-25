package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;

@Controller("cardController")
public class CardController {

	@RequestMapping("createCard.do")
	public String addCard(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");

		CardVO vo = new CardVO();
		vo.setTitle(title);
		vo.setUserno((int) session.getAttribute("logUserno"));
		int cnt = OnmDAO.createCard(vo);

		res.getWriter().write(String.valueOf(cnt));
		return "ajax";
	}

}
