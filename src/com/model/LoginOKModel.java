package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.dao.UserDTO;

public class LoginOKModel implements Model {

   @Override
   public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
      // TODO Auto-generated method stub
	   HttpSession session=req.getSession();
       String email=req.getParameter("logEmail");
       String pwd=req.getParameter("logPwd");
       String LogCheck="";
       int result = UserDAO.emailCheck(email);
       UserDTO d = UserDAO.pwdCheck(email);
       if(result==0){
          LogCheck="noemail";
       }
       else{
          if(d.getPwd().equals(pwd)){
             LogCheck="ok";
             //로그인 성공시 로그인을 세션으로 보낸다.
             req.setAttribute("logEmailOK", email);
             session.setAttribute("nickname", d.getNickname());
             session.setAttribute("userno", d.getNo());
          }else{
             LogCheck="nopwd";
          }
       }
       
      //로그인 시 로그인 종류를 보낸다
       res.getWriter().write(String.valueOf(LogCheck));
      return null;
   }

}