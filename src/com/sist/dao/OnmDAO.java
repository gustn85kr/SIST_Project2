package com.sist.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class OnmDAO{
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public static int listCreate(int userno){
		SqlSession session=ssf.openSession(true);
		session.insert("listInsert",userno);
		int result = session.selectOne("getListNo");
		session.close();
		return result;
	}
	public static void listAdd(ListVO vo){
		SqlSession session=ssf.openSession(true);
		session.update("listAdd",vo);
		session.close();
	}
	public static List<ListVO> listSearch(int userno){
		SqlSession session=ssf.openSession();
		List<ListVO> list = new ArrayList<ListVO>();
		list = session.selectList("listSearch",userno);
		session.close();
		return list;
	}
	public static void listDelete(int no){
		SqlSession session=ssf.openSession(true);
		session.delete("listDelete",no);
		session.close();
	}
	public static void dragEvent(ListVO vo){
		SqlSession session=ssf.openSession(true);
		session.update("dragEvent",vo);
		session.close();
	}
	public static void addCard(CardVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("addCard",vo);
		session.close();
	}
}
