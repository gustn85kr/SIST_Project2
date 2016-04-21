package com.controller;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Model;

import java.util.*;

// list.do ==> list
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private WebApplicationContext wc;

	public void init(ServletConfig config) throws ServletException {
		try {
			String path = config.getInitParameter("xmlPath");
			wc = new WebApplicationContext(path);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// http://localhost:8080/MVCProject/list.do
		try {
			// 사용자가 요청한 내용
			String cmd = request.getRequestURI();
			cmd = cmd.substring(request.getContextPath().length() + 1, cmd.lastIndexOf('.'));
			Model model = wc.getBean(cmd);
			String jsp = model.handlerRequest(request, response);
			// forward
			RequestDispatcher rd = request.getRequestDispatcher(jsp);
			rd.forward(request, response);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
