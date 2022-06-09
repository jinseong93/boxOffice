package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.LikesDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Likes;

public class ReviewLike implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		String id = (String) session.getAttribute("id");
		if (id == "" || id == null) {
			return "reviewLikesLogin";
		} else {
			Likes likes = new Likes();
			LikesDao ld = LikesDao.getInstance();

			likes.setId(id);
			likes.setRvNum(rvNum);

			String chk = ld.select(likes);
			if (chk != null) {
				request.setAttribute("id", id);
				request.setAttribute("rvNum", rvNum);
				return "reviewLikesFail";

			} else {
				int result = ld.insert(likes);

				ReviewDao rd = ReviewDao.getInstance();
				rd.updateLike(rvNum);
				request.setAttribute("id", id);
				request.setAttribute("rvNum", rvNum);
				request.setAttribute("result", result);

				return "reviewLikesResult";
			}
		}

	}

}
