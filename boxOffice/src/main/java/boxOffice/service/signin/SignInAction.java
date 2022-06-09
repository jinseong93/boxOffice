package boxOffice.service.signin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.*;
import boxOffice.model.*;

public class SignInAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String id= request.getParameter("id");
		String password=request.getParameter("password");
		MemberDao md= MemberDao.getInstance();
		Member member=md.select(id);
		int result=0;
		
		if(member==null)
		{
			result=-1;
		}
		else if(member.getMemberDel().equals("y"))
		{
			result=-2;
		}
		else
		{
			if(member.getPassword().equals(password))
			{
				HttpSession session=request.getSession();
				session.setAttribute("id", id);
				result=1;
			}
		}
		request.setAttribute("result", result);
		return "signIn";
	}

}

