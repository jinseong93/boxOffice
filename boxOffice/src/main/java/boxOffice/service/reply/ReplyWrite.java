package boxOffice.service.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.ReplyDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Reply;

public class ReplyWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		String rpContent = request.getParameter("rpContent");
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		int rpNum = Integer.parseInt(request.getParameter("rpNum"));
		int ref = Integer.parseInt(request.getParameter("ref"));
		Reply reply = new Reply();
		reply.setRpContent(rpContent);
		reply.setId(id);
		reply.setRvNum(rvNum);
		reply.setRpNum(rpNum);
		reply.setRef(ref);
		
		if (ref != 0) { // 답변글일 때 ref는 답변할 글의 replyNum

			ReplyDao rd = ReplyDao.getInstance();

			int ref_step = rd.selectStep(ref);
			reply.setRef_level(1);
			reply.setRef_step(ref_step);

			
			int resultRe = rd.insertRe(reply);
			ReviewDao rvd = ReviewDao.getInstance();
			rvd.addCount(rvNum);

			request.setAttribute("resultRe", resultRe);
			request.setAttribute("rvNum", rvNum);
			
		} else if (ref == 0 ) { //답글이 아닐때

			int ref_step = Integer.parseInt(request.getParameter("ref_step"));
			int ref_level = Integer.parseInt(request.getParameter("ref_level"));

			reply.setRef_step(ref_step);
			reply.setRef_level(ref_level);
			
			ReplyDao rd = ReplyDao.getInstance();
			
			int result = rd.insert(reply);
			ReviewDao rvd = ReviewDao.getInstance();
			rvd.addCount(rvNum);
			
			request.setAttribute("result", result);
			request.setAttribute("rvNum", rvNum);
		}
		
		
		return "replyWrite";
	}

}
