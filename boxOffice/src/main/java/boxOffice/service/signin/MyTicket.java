package boxOffice.service.signin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.FboardDao;
import boxOffice.dao.ReservationDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Fboard;
import boxOffice.model.Reservation;
import boxOffice.model.Review;

public class MyTicket implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		

		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		final int ROW_PER_PAGE1 = 5; // 한페이지 당 10개
		final int PAGE_PER_BLOCK1 = 5; // 한블럭에 10개 page
		
		String pageNum1 = request.getParameter("pageNum1");
		if (pageNum1 == null || pageNum1.equals("")) pageNum1 = "1";
		
		int currentPage1 = Integer.parseInt(pageNum1);
		//  시작번호      (페이지 번호 - 1) *  페이지당 개수 + 1
		
		int startRow1 = (currentPage1-1) * ROW_PER_PAGE1 + 1;
		//	 끝번호      시작번호 + 페이지당 개수 -1
		int endRow1= startRow1 + ROW_PER_PAGE1 -1;
		
		ReservationDao rv=ReservationDao.getInstance();
		int total1=rv.getTiketTotal(id);
		
		List<Reservation> list1 = rv.selectTiketList(startRow1, endRow1,id); 
		// (double) 나눗셈 결과를 실수로 하기 위해서 
		int totalPage1 = (int)Math.ceil((double)total1/ROW_PER_PAGE1); // 총 몇페이지 인가
		// 시작 페이지 = 현재 페이지 - (현재페이지 - 1) % 10
		int startPage1 = currentPage1 - (currentPage1 - 1) % PAGE_PER_BLOCK1;
		// 끝 페이지 = 시작 페이지 + 블록당 페이지수 -1
		int endPage1 = startPage1 + PAGE_PER_BLOCK1 -1;
		// 총 페이지보다 큰 endPage는 나올 수 없다.
		if (endPage1 > totalPage1) endPage1 = totalPage1;
		request.setAttribute("list1", list1); 
		request.setAttribute("pageNum1", pageNum1);
		request.setAttribute("currentPage1", currentPage1);
		request.setAttribute("totalPage1", totalPage1);
		request.setAttribute("startPage1", startPage1);
		request.setAttribute("endPage1", endPage1);
		request.setAttribute("PAGE_PER_BLOCK1", PAGE_PER_BLOCK1);
		
		
		
		
		final int ROW_PER_PAGE2 = 5; // 한페이지 당 10개
		final int PAGE_PER_BLOCK2 = 5; // 한블럭에 10개 page
		
		String pageNum2 = request.getParameter("pageNum2");
		if (pageNum2 == null || pageNum2.equals("")) pageNum2 = "1";
		
		int currentPage2 = Integer.parseInt(pageNum2);
		//  시작번호      (페이지 번호 - 1) *  페이지당 개수 + 1
		
		int startRow2 = (currentPage2-1) * ROW_PER_PAGE2 + 1;
		//	 끝번호      시작번호 + 페이지당 개수 -1
		int endRow2= startRow2 + ROW_PER_PAGE2 -1;

		int total2 = rv.getEndTiketTotal(id);
		
		List<Reservation> list2 = rv.selectEndTiketList(startRow2, endRow2,id); 
		// (double) 나눗셈 결과를 실수로 하기 위해서 
		int totalPage2 = (int)Math.ceil((double)total2/ROW_PER_PAGE2); // 총 몇페이지 인가
		// 시작 페이지 = 현재 페이지 - (현재페이지 - 1) % 10
		int startPage2 = currentPage2 - (currentPage2 - 1) % PAGE_PER_BLOCK2;
		// 끝 페이지 = 시작 페이지 + 블록당 페이지수 -1
		int endPage2 = startPage2 + PAGE_PER_BLOCK2 -1;
		// 총 페이지보다 큰 endPage는 나올 수 없다.
		if (endPage2 > totalPage2) endPage2 = totalPage2;
		request.setAttribute("list2", list2); 
		request.setAttribute("pageNum2", pageNum2);
		request.setAttribute("currentPage2", currentPage2);
		request.setAttribute("totalPage2", totalPage2);
		request.setAttribute("startPage2", startPage2);
		request.setAttribute("endPage2", endPage2);
		request.setAttribute("PAGE_PER_BLOCK2", PAGE_PER_BLOCK2);
		
		
		
		
		
		
		return "myticket";
	}

}
