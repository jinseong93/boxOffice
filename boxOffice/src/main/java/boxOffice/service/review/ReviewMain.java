package boxOffice.service.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReplyDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Reply;
import boxOffice.model.Review;

public class ReviewMain implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		/* int rvNum = Integer.parseInt(request.getParameter("rvNum")); */
		
		final int ROW_PER_PAGE = 10;
		final int PAGE_PER_BLOCK = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		// 시작번호	(페이지번호 - 1) * 페이지당 갯수+ 1
		int startRow = (currentPage - 1) * ROW_PER_PAGE + 1;
		// 끝번호 	시작번호 + 페이지당개수 - 1			
		int endRow = startRow + ROW_PER_PAGE - 1;
		ReviewDao rd = ReviewDao.getInstance();
		int total = rd.getTotal();		// 총 글 수
		int totalPage = (int)Math.ceil((double)total / ROW_PER_PAGE);
		int num = total - startRow +1;		// 번호 보기 좋게 답글 달아도 번호 순서대로(내림차순) 하기
		// 시작페이지 구하는 식 : 현재페이지 - (현재페이지 - 1)%10(블럭당 페이지 숫자)
		int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
		// endPage구하는 식 : 시작페이지 + 블록당페이지 수 -1
		int endPage = startPage + PAGE_PER_BLOCK - 1;
		//	만약 endPage가 총페이지보다 크면 endPage는 총페이지로 변경
		if (endPage > totalPage) endPage = totalPage;
		List<Review> list = rd.reviewList(startRow, endRow);
		
		/*
		 * ReplyDao rpd = ReplyDao.getInstance(); List<Reply> rpList =
		 * rpd.rpList(rvNum); // 댓글 리스트 int replyCount = rpList.size(); // 댓글 수 가져오기
		 */
		request.setAttribute("list", list);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		/* request.setAttribute("replyCount", replyCount); */
		
		return "reviewMain";
	}

}
