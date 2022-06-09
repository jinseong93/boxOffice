package boxOffice.service.reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.ReservationDao;
import boxOffice.model.Reservation;

public class ReservationList implements CommandProcess  {	
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		final int ROW_PER_PAGE = 10; // 한페이지 당 10개
		final int PAGE_PER_BLOCK = 10; // 한블럭에 10개 page
		
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null || pageNum.equals("")) pageNum = "1";
		
		int currentPage = Integer.parseInt(pageNum);
		//  시작번호      (페이지 번호 - 1) *  페이지당 개수 + 1
		
		int startRow = (currentPage-1) * ROW_PER_PAGE + 1;
		//	 끝번호      시작번호 + 페이지당 개수 -1
		int endRow= startRow + ROW_PER_PAGE -1;

		ReservationDao md = ReservationDao.getInstance();
		int total = md.getTotal();
		
		List<Reservation> list = md.selectList(startRow, endRow); 
		// (double) 나눗셈 결과를 실수로 하기 위해서 
		int totalPage = (int)Math.ceil((double)total/ROW_PER_PAGE); // 총 몇페이지 인가
		// 시작 페이지 = 현재 페이지 - (현재페이지 - 1) % 10
		int startPage = currentPage - (currentPage - 1) % PAGE_PER_BLOCK;
		// 끝 페이지 = 시작 페이지 + 블록당 페이지수 -1
		int endPage = startPage + PAGE_PER_BLOCK -1;
		// 총 페이지보다 큰 endPage는 나올 수 없다.
		if (endPage > totalPage) endPage = totalPage;
		
		
		request.setAttribute("list", list); 
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("PAGE_PER_BLOCK", PAGE_PER_BLOCK);
		request.setAttribute("total", total);
		
		return "reservationList";
	}

}