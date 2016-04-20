package com.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class UserDAO{
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	//회원가입 - 완료
	public static void insertUser(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.insert("insertUser",d);
		session.close();
	}
	//회원가입 (이메일 중복확인)
	public static int confirmEmail(String email){
		SqlSession session=ssf.openSession();
		 int cnt=session.selectOne("confirmEmail",email);
		 session.close();
		 return cnt;
	}
	
	//로그인 부분 (emailCheck, pwdCheck)
	public static int emailCheck(String email){
		SqlSession session=ssf.openSession();
		int cnt=session.selectOne("emailCheck",email);
		session.close();
		return cnt;
	}
	public static String pwdCheck(String email){
		SqlSession session=ssf.openSession();
		String dbPwd = session.selectOne("pwdCheck",email);
		session.close();
		return dbPwd;
	}
	public static void listInsert(ListVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("listInsert",vo);
		session.close();
	}
	public static String listSearch(){
		SqlSession session=ssf.openSession();
		String html = session.selectOne("listSearch");
		session.close();
		return html;
	}
}