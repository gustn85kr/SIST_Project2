package com.sist.model;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.CardVO;
import com.sist.dao.CommVO;
import com.sist.dao.ListVO;
import com.sist.dao.OnmDAO;

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
		// System.out.println("userno" + (int)
		// session.getAttribute("logUserno"));
		list = OnmDAO.listSearch((int) session.getAttribute("logUserno"));
		for (ListVO vo : list) {
			String tmp = vo.getHtml();
			vo.setHtml(HashingHTML.htmlTostr(tmp));
			// System.out.println(vo.getHtml());
		}

		List<CardVO> clist = new ArrayList<CardVO>();
		clist = OnmDAO.loadCard((int) session.getAttribute("logUserno"));
		req.setAttribute("clist", clist);
		req.setAttribute("list", list);
		return "onm";
	}

	@RequestMapping("detail.do")
	public String detail(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String strno = req.getParameter("no");
		int no = Integer.parseInt(strno.substring(4));
		CardVO vo = OnmDAO.cardInfo(no);
		if(vo.getContent()!=null){
			String data = vo.getContent();
			vo.setContent(HashingHTML.htmlTostr(data));
		}
		String map = OnmDAO.loadMap(no);
		String checkTitle = OnmDAO.loadCheckListTitle(no);
		List<CommVO> checkList = OnmDAO.loadCheckList(no);
		System.out.println(map);
		req.setAttribute("card", vo);
		req.setAttribute("map", map);
		req.setAttribute("checkTitle", checkTitle);
		req.setAttribute("checkList", checkList);
		return "detail";
	}
}
