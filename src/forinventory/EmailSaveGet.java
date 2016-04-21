package forinventory;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmailSaveGet implements Model {

	@Override
	public String handlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		Cookie[] cookies = req.getCookies();
	    String emailSave=cookies[1].getValue();
	    res.getWriter().write(String.valueOf(emailSave));
		return null;
	}

}
