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
	
	public static void insertUser(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.update("insertUser",d);
		session.close();
	}
	
	public static int confirmEmail(String email){
		SqlSession session=ssf.openSession();
		 int cnt=session.selectOne("confirmEmail",email);
		 session.close();
		 return cnt;
	}
	
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
}