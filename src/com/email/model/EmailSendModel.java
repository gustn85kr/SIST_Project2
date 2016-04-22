package com.email.model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class EmailSendModel {
	@RequestMapping("emailSend.do")
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception{
		String email=req.getParameter("inputCheckNum");
		String host="smtp.gmail.com";
		String to=email;
		String from="@gmail.com";
		String password="";
		String from_name="¿î¿µÀÚ";
		
		Properties props=new Properties();
		props.put("mail.smtps.auth", "true");
		Session session=Session.getInstance(props);
		
		try{
			MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			
			InternetAddress address=new InternetAddress(to);
			msg.setRecipient(Message.RecipientType.TO, address);
			
			Transport transport=session.getTransport("smtps");
			transport.connect(host, from, password);
			transport.sendMessage(msg, msg.getAllRecipients());
			Transport.send(msg);
			transport.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
		return "emailSend";
	}
}














