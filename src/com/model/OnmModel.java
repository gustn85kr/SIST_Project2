package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ListVO;
import com.dao.OnmDAO;

import java.util.*;
public class OnmModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		List<ListVO> list = new ArrayList<ListVO>();
		System.out.println("userno"+(int)session.getAttribute("userno"));
		list = OnmDAO.listSearch((int)session.getAttribute("userno"));
		for(ListVO vo :list){
			System.out.println("yes");
			String tmp=vo.getHtml();
			vo.setHtml(htmlTostr(tmp));
			System.out.println(vo.getHtml());
		}
		req.setAttribute("list", list);
		return "onm.jsp";
	}
	   public String htmlTostr(String sText){

		      sText=sText.replace("&lt;","<");
		      sText=sText.replace("&gt;",">");
		      sText=sText.replace("&amp;","&");
		      sText=sText.replace("&#37;",(char)37+"");
		      sText=sText.replace("&quot;",(char)34+"");
		      sText=sText.replace("&#39;",(char)39+"");
		      sText=sText.replace("&#35;","#");
		      sText=sText.replace("\n","<br>");
		      sText=sText.replace("&nbsp;"," ");
		      
		      //System.out.println(sText);
		      return sText;
	 }

}
