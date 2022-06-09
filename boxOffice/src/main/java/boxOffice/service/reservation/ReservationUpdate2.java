package boxOffice.service.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReservationDao;
import boxOffice.model.Reservation;

public class ReservationUpdate2 implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		Integer ticketCode = Integer.parseInt(request.getParameter("ticketCode"));
		String shCheck=request.getParameter("shCheck");
		String shCheck2 = "n";
		
		ReservationDao rd=ReservationDao.getInstance();
		int result = 0;
		
		
		if(shCheck.equals(shCheck2)) {
			result = rd.updateShCheck(ticketCode);
		}
		
				
		request.setAttribute("result", result);
		
		
		return "reservationUpdate2";
	}

}