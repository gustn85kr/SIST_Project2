package com.sist.model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
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
		vo.setUserno((int) session.getAttribute("logUserno"));
		OnmDAO.listAdd(vo);
		// res.setCharacterEncoding("UTF-8");
		// res.getWriter().write(tot);

		return "ajax";
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
		HttpSession session = req.getSession();
		int result = OnmDAO.listCreate((int) session.getAttribute("logUserno"));
	    res.getWriter().write(String.valueOf(result));

		return "ajax";
	}
	
	@RequestMapping("dragEvent.do")
	public String dragEvent(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		req.setCharacterEncoding("UTF-8");
		String data = req.getParameter("html");
		String listno = req.getParameter("listno");
		int no = Integer.parseInt(listno.substring(4));
		System.out.println("dragevent userno : "+no);
		System.out.println(data);
		String aData = HashingHTML.strTohtml(data);
		//System.out.println(aData);
		
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setUserno((int)session.getAttribute("logUserno"));
		vo.setNo(no);
		OnmDAO.dragEvent(vo);
		
		/*OnmDAO.dragEvent(no);*/
		//res.setCharacterEncoding("UTF-8");
		//res.getWriter().write(tot);
		
		return "ajax";
	}
	
	@RequestMapping("planSearch.do")
	public String planSearch(HttpServletRequest req, HttpServletResponse res) throws Exception{
		HttpSession session=req.getSession();
		session.getAttribute("logEmail");
		req.setCharacterEncoding("UTF-8");
		String inputSearch = req.getParameter("inputSearch");
		String searchRadios = req.getParameter("searchRadios");
		System.out.println("inputSearch : "+inputSearch);
		System.out.println("searchRadios : "+searchRadios);
		
		return "ajax";
	}
	
	@RequestMapping("sendMail.do")
	public String sendMail(HttpServletRequest req, HttpServletResponse res) throws Exception{
		String toMail = req.getParameter("toMail");
		String planSubject = req.getParameter("planSubject");
		String planDate = req.getParameter("planDate");
		String planContent = req.getParameter("planContent");	
		
		String host = "smtp.gmail.com";
		String to = toMail;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "오내미 운영자";

		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		Session session = Session.getInstance(props);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			msg.setSubject("오내미 일정 메일발송입니다.");
			msg.setContent(
					"<table border=5 background=http://cfile26.uf.tistory.com/image/034FB94C519370551F0C45 style='background-repeat : no-repeat;'>"+
						"<tr>"+
							"<td style=width:500px align=center><font color=black>"+planSubject.trim()+"</font></td>"+
							"<td style=width:200px align=center><font color=black>"+planDate.trim()+"</font></td>"+
						"</tr>"+
						"<tr>"+
							"<td colspan=2 align=left><font color=black>"+planContent.trim()+"</font></td>"+
						"</tr>"+
					"</table>"
					, "text/html;charset=" + "EUC-KR");
			InternetAddress address = new InternetAddress(to);
			msg.setRecipient(Message.RecipientType.TO, address);
			
			Transport transport = session.getTransport("smtps");
			transport.connect(host, from, password);
			transport.sendMessage(msg, msg.getAllRecipients());
			Transport.send(msg);
			transport.close();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return "ajax";
	}
}
