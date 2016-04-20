package com.dao;

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
	public static void listInsert(ListVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("listInsert",vo);
		session.close();
	}
	public static List<ListVO> listSearch(int userno){
		SqlSession session=ssf.openSession();
		List<ListVO> list = new ArrayList<ListVO>();
		list = session.selectList("listSearch",userno);
		session.close();
		return list;
	}
	public static int getListNo(){
		SqlSession session=ssf.openSession();
		int res = session.selectOne("getListNo");
		session.close();
		return res;
	}
}