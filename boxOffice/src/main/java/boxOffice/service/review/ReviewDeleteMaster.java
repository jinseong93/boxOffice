package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Member;

public class ReviewDeleteMaster implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		ReviewDao rd = ReviewDao.getInstance();
		int result = rd.deleteMaster(rvNum);

		request.setAttribute("result", result);
		request.setAttribute("rvNum", rvNum);
		
		return "reviewDeleteMaster";
	}

}
