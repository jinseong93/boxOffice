package boxOffice.service.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReplyDao;
import boxOffice.dao.ReviewDao;

public class ReplyDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rpNum = Integer.parseInt(request.getParameter("rpNum"));
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		
		ReplyDao rd = ReplyDao.getInstance();
		int result = rd.delete(rpNum);
		
		ReviewDao rvd = ReviewDao.getInstance();
		rvd.subCount(rvNum);
		
		request.setAttribute("result", result);
		request.setAttribute("rvNum", rvNum);
		return "replyDelete";
	}

}
