package boxOffice.service.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.*;
import boxOffice.model.*;

public class Confirm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String msg = "";
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		if (member == null) {
			msg = "사용 가능한 아이디 입니다.";
		} else {
			msg = "사용중인 아이디 입니다.";
		}
		
		request.setAttribute("msg", msg);
		return "confirm";
	}

}
