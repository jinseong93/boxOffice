package boxOffice.service.signin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.*;
import boxOffice.model.*;

public class SignUpAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			String tel = tel1 + "-" + tel2 + "-" + tel3;
			String postcode = request.getParameter("postcode");
			String roadAddress = request.getParameter("roadAddress");
			String detailAddress = request.getParameter("detailAddress");
			String address = postcode +" "+ roadAddress +" "+ detailAddress;
			
			Member member = new Member();
			member.setId(id);
			member.setPassword(password);
			member.setName(name);
			member.setTel(tel);
			member.setAddress(address);
			
			MemberDao md = MemberDao.getInstance();
			int result = 0;
			Member member2 = md.select(id);
			if (member2 == null) {
				result = md.insert(member);
			} else result = -1;
			
			request.setAttribute("result", result);
		
			return "signUp";
	}

}
