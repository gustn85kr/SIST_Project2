package com.sist.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
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
	@RequestMapping("dateUpdate.do")
	public String dateUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		vo.setNo(Integer.parseInt(no));
		vo.setStartdate(start);
		vo.setEnddate(end);
		OnmDAO.cardDateUpdate(vo);
		return "ajax";
	}
	@RequestMapping("labelUpdate.do")
	public String labelUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String label = req.getParameter("label");
		
		vo.setNo(Integer.parseInt(no));
		vo.setLabel(label);
		OnmDAO.cardLabelUpdate(vo);
		
		return "ajax";
	}
	
	@RequestMapping("dateDrag.do")
	public String dateDrag(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String startdate = req.getParameter("startdate");
		String enddate = req.getParameter("enddate"); 
		String no = req.getParameter("no");
		System.out.println("yes:"+no);
		CardVO vo = new CardVO();
		vo.setStartdate(startdate);
		vo.setEnddate(enddate);
		vo.setNo(Integer.parseInt(no));
		OnmDAO.dateDrag(vo);

		return "ajax";
	}
	@RequestMapping("contentUpdate.do")
	public String contentUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String content = req.getParameter("content");
		vo.setNo(Integer.parseInt(no));
		String aData = HashingHTML.strTohtml(content);
		vo.setContent(aData);
		OnmDAO.cardContentUpdate(vo);
		
		return "ajax";
	}
	@RequestMapping("priorityUpdate.do")
	public String priorityUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String op1 = req.getParameter("op1");
		String op2 = req.getParameter("op2");
		vo.setNo(Integer.parseInt(no));
		vo.setPriority1(op1);
		vo.setPriority2(op2);
		OnmDAO.cardPriorityUpdate(vo);
		
		return "ajax";
	}
	@RequestMapping("openUpdate.do")
	public String openUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String open = req.getParameter("open");
		
		vo.setNo(Integer.parseInt(no));
		vo.setDone(open);
		
		OnmDAO.cardOpenUpdate(vo);
		
		return "ajax";
		
	}
	@RequestMapping("mapUpdate.do")
	public String mapUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String cardno= req.getParameter("no");
		String loc = req.getParameter("loc");
		System.out.println("위치:"+loc);
		vo.setCardcomm(loc);
		vo.setCardno(Integer.parseInt(cardno));
		vo.setFunction(1);
		int result = OnmDAO.countMap(Integer.parseInt(cardno));
		if(result==0){
			OnmDAO.mapInsert(vo);
		}else{
			OnmDAO.mapUpdate(vo);
		}
		
		return "ajax";
	}
	@RequestMapping("mapDelete.do")
	public String mapDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String cardno= req.getParameter("no");
		OnmDAO.mapDelete(Integer.parseInt(cardno));
		return "ajax";
	}
	@RequestMapping("checkCreate.do")
	public String checkCreate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String cardno= req.getParameter("no");
		String title = req.getParameter("title");
		vo.setCardcomm(title);
		vo.setCardno(Integer.parseInt(cardno));
		OnmDAO.checkListCreate(vo);
		
		return "ajax";
	}
	@RequestMapping("checkListUpdate.do")
	public String checkListUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String cardno= req.getParameter("no");
		String title = req.getParameter("msg");
		vo.setCardcomm(title);
		vo.setCardno(Integer.parseInt(cardno));
		int no = OnmDAO.checkListUpdate(vo);
		res.getWriter().write(String.valueOf(no));
		return "ajax";
	}
	@RequestMapping("checkListDelete.do")
	public String checkListDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String cardno= req.getParameter("no");
		OnmDAO.checkListDelete(Integer.parseInt(cardno));
		return "ajax";
	}
	@RequestMapping("checkListChange.do")
	public String checkListChange(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String id= req.getParameter("id");
		String func = req.getParameter("function");
		vo.setNo(Integer.parseInt(id));
		vo.setFunction(Integer.parseInt(func));
		OnmDAO.checkListChange(vo);
		
		return "ajax";
	}
	@RequestMapping("fileInsert.do")
	public String fileInsert(HttpServletRequest req, HttpServletResponse res) throws Exception {
    req.setCharacterEncoding("EUC-KR");
    String enctype="EUC-KR";
    int size=1024*1024*100;
    String path="c://download";
    MultipartRequest mr=
          new MultipartRequest(req,path,size,enctype,
                new DefaultFileRenamePolicy());

    String filename=mr.getOriginalFileName("upload");
    System.out.println(filename);
    if(filename==null)
    {
       System.out.println("파일 네임 널");   
    }
    else
    {
       System.out.println(filename);
       File file=new File("c:\\download\\"+filename);
       
    }
	  return "ajax";
	}
}
