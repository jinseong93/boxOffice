package boxOffice.service.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReplyDao;
import boxOffice.dao.ReviewDao;

public class ReplyMasterDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rpNum = Integer.parseInt(request.getParameter("rpNum"));
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		
		ReplyDao rd = ReplyDao.getInstance();
		int result = rd.deleteMaster(rpNum);
		
		request.setAttribute("result", result);
		request.setAttribute("rvNum", rvNum);
		
		ReviewDao rvd = ReviewDao.getInstance();
		rvd.subCount(rvNum);
		
		return "replyMasterDelete";
	}

}
