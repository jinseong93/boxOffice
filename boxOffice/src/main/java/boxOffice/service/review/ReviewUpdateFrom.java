package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewUpdateFrom implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		String pageNum = request.getParameter("pageNum");
		
		ReviewDao rd = ReviewDao.getInstance();
		Review review = rd.select(rvNum);
		
		request.setAttribute("review", review);
		request.setAttribute("rvNum", rvNum);
		request.setAttribute("pageNum", pageNum);
		

		return "reviewUpdateForm";
	}

}
