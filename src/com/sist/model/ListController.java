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
		String no = req.getParameter("no");
		String aData = HashingHTML.strTohtml(data);
		ListVO vo = new ListVO();
		vo.setNo(Integer.parseInt(no));
		vo.setHtml(aData);
		vo.setTitle(title);
		vo.setUserno((int) session.getAttribute("userno"));
		OnmDAO.listAdd(vo);
		// res.setCharacterEncoding("UTF-8");

		// res.getWriter().write(tot);

		return "ajax";
	}
	@RequestMapping("listDelete.do")
	public String listDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String id = req.getParameter("id");
		id = id.substring(4);
		System.out.println("id : "+id);
		OnmDAO.listDelete(Integer.parseInt(id));
		return "ajax";
	}
	@RequestMapping("getListNo.do")
	public String getListNo(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		System.out.println("¾¾¹ß:"+(int) session.getAttribute("userno"));
		int result = OnmDAO.listCreate((int) session.getAttribute("userno"));
		System.out.println(result);
	    res.getWriter().write(String.valueOf(result));

		return "ajax";
	}
	
	@RequestMapping("dragEvent.do")
	public String dragEvent(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		req.setCharacterEncoding("UTF-8");
		String data = req.getParameter("html");
		String listno = req.getParameter("listno");
		int no = Integer.parseInt(listno.substring(listno.length()-1, listno.length()));
		System.out.println("dragevent userno : "+no);
		String aData = HashingHTML.strTohtml(data);
		System.out.println(aData);
		
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setUserno((int)session.getAttribute("userno"));
		vo.setNo(no);
		OnmDAO.dragEvent(vo);
		
		/*OnmDAO.dragEvent(no);*/
		//res.setCharacterEncoding("UTF-8");

		//res.getWriter().write(tot);

	
		return "ajax";
	}
}
