package com.sist.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class OnmDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static int listCreate(int userno) {
		SqlSession session = ssf.openSession(true);
		session.insert("listInsert", userno);
		int result = session.selectOne("getListNo");
		session.close();
		return result;
	}

	public static void listAdd(ListVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("listAdd", vo);
		session.close();
	}

	public static List<ListVO> listSearch(int userno) {
		SqlSession session = ssf.openSession();
		List<ListVO> list = new ArrayList<ListVO>();
		list = session.selectList("listSearch", userno);
		session.close();
		return list;
	}

	public static void listDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("listDelete", no);
		session.close();
	}

	public static void dragEvent(ListVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("dragEvent", vo);
		session.close();
	}

	public static int createCard(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("createCard", vo);
		int cnt = session.selectOne("getCardNo");
		session.close();
		return cnt;
	}

	public static CardVO cardInfo(int no) {
		SqlSession session = ssf.openSession();
		CardVO vo = session.selectOne("getCardInfo", no);
		session.close();
		return vo;
	}

	public static List<CardVO> loadCard(int userno) {
		SqlSession session = ssf.openSession();
		List<CardVO> list = new ArrayList<CardVO>();
		list = session.selectList("loadCard", userno);
		session.close();
		return list;
	}
	
	public static void dateDrag(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("dateDrag", vo);
		System.out.println("데이트드래그");
		session.close();
	}
}
