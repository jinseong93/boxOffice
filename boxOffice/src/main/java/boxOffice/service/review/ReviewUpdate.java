package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MovieDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Review review = new Review();
		String rvTitle = request.getParameter("rvTitle");
		int mvGrade = Integer.parseInt(request.getParameter("mvGrade"));
		String rvContent = request.getParameter("rvContent");
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		int mvCode = Integer.parseInt(request.getParameter("mvCode"));
		
		review.setRvTitle(rvTitle);
		review.setMvGrade(mvGrade);
		review.setRvContent(rvContent);
		review.setRvNum(rvNum);
		
		request.setAttribute("rvNum", rvNum);
		
		String pageNum = request.getParameter("pageNum");
		ReviewDao rd = ReviewDao.getInstance();
		
		int startGrade = 0;
		if (mvCode == 1) {
			startGrade = 9;
		} else if (mvCode == 4) {
			startGrade = 8;
		} else if (mvCode == 6) {
			startGrade = 6;
		} else if (mvCode == 9) {
			startGrade = 7;
		} else if (mvCode == 16) {
			startGrade = 8;
		} else if (mvCode == 18) {
			startGrade = 5;
		}
		
		MovieDao mv = MovieDao.getInstance();
		int nowGrade = mv.getGrade(mvCode);	// 현재 평균 평점 가져오기
		double mvCodeCount = rd.getCodeTotal(mvCode);		//	영화별 리뷰 갯수 가져오기
		
		if (mvCodeCount == 0) {
			double gradeUp = (nowGrade+mvGrade)/2.0;
			mv.updateGrade(gradeUp, mvCode);
		} else {
			int gradeSUM = rd.gradeSUM(mvCode);
			double gradeUp = Math.round(((startGrade+mvGrade+gradeSUM)/(mvCodeCount+2.0)*10.0))/10.0;
			mv.updateGrade(gradeUp, mvCode);
		}
		
		
		int result = rd.update(review);

		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		
		return "reviewUpdate";
	}

}
