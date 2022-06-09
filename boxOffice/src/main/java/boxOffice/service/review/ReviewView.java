package boxOffice.service.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;
import boxOffice.dao.MemberDao;
import boxOffice.dao.ReplyDao;
import boxOffice.model.Member;
import boxOffice.model.Reply;

public class ReviewView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));	
		String pageNum = request.getParameter("pageNum");
		
		ReviewDao rd = ReviewDao.getInstance();
		rd.readCountUpdate(rvNum);	// 조회수 증가
		String id = rd.selectId(rvNum);
		
		Review review = rd.select(rvNum);	// 리뷰 불러오기
		
		
		ReplyDao rpd = ReplyDao.getInstance();
		List<Reply> rpList = rpd.rpList(rvNum);
		int replyCount = rpList.size();
		List<Reply> rpList2 = rpd.rpList2(rvNum);
		
		MemberDao md=MemberDao.getInstance();
		Member member=md.select(id);
		
		request.setAttribute("review", review);
		request.setAttribute("rvNum", rvNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("replyCount", replyCount);
		request.setAttribute("rpList2", rpList2);
		request.setAttribute("member", member);
		
		return "reviewView";
	}

}
