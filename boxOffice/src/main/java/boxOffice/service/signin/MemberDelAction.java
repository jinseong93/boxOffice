package boxOffice.service.signin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.MemberDao;
import boxOffice.model.Member;

public class MemberDelAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao md = MemberDao.getInstance();
		Member member = md.select(id);
		int result = 0;
		
		if (member.getPassword().equals(password)) {
			md.memberDel(id);
			result = 1;
			session.invalidate();
		} else {
			result = -1;
		}
		
		
		request.setAttribute("result", result);
		return "memberDelAction";
	}

}
