package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.ListVO;
import com.sist.dao.OnmDAO;

@Controller("listController")
public class ListController {

	@RequestMapping("listAdd.do")
	public String listAdd(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");
		String data = req.getParameter("html");
		System.out.println(title);
		System.out.println(data);
		String aData = HashingHTML.strTohtml(data);
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setTitle(title);
		vo.setUserno((int) session.getAttribute("userno"));
		OnmDAO.listInsert(vo);
		// res.setCharacterEncoding("UTF-8");

		// res.getWriter().write(tot);

		return null;
	}
	@RequestMapping("listDelete.do")
	public String listDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String id = req.getParameter("id");
		id = id.substring(4);
		OnmDAO.listDelete(Integer.parseInt(id));
		return "ajax";
	}
	@RequestMapping("getListNo.do")
	public String getListNo(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int result = OnmDAO.getListNo();
	    res.getWriter().write(String.valueOf(result));

		return "ajax";
	}
}
