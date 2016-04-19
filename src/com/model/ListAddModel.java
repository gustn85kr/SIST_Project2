package com.model;

import java.io.*;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.dao.ListVO;
import com.dao.UserDAO;
public class ListAddModel implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		String data =req.getParameter("data");
		String aData = strTohtml(data);
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setTitle("hello");
		UserDAO.listInsert(vo);
		String result = UserDAO.listSearch();
		String tot = htmlTostr(result);
		System.out.println(tot);
		res.setCharacterEncoding("UTF-8");

		res.getWriter().write(tot);

		return null;
	}
	   public String strTohtml(String sText){
		      
		   
	         sText=sText.trim();
	         sText=sText.replace("&", "&amp;");
	         sText=sText.replace("#", "&#35;");
	         sText=sText.replace("<", "&lt;");
	         sText=sText.replace(">", "&gt;");
	         sText=sText.replace("%", "&#37;");
	         sText=sText.replace("\"", "&quot;");
	         sText=sText.replace("'", "&#39;");
	         sText=sText.replace(" ", "&nbsp;");
	         sText=sText.replace("<br>", "\n");
	         //System.out.println(sText);
	         return sText;
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
