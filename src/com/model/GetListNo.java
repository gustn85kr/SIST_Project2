package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.OnmDAO;

public class GetListNo implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int result = OnmDAO.getListNo();
	    res.getWriter().write(String.valueOf(result));

		return null;
	}

}
