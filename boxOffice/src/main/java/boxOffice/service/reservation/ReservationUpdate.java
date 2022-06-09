package boxOffice.service.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MemberDao;
import boxOffice.dao.ReservationDao;
import boxOffice.model.Reservation;

public class ReservationUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		Integer ticketCode = Integer.parseInt(request.getParameter("ticketCode"));
		String rsCheck=request.getParameter("rsCheck");
		String id = request.getParameter("id");
		String rsCheck2 = "n";
		
		ReservationDao rd=ReservationDao.getInstance();
		MemberDao md = MemberDao.getInstance();
		int result = 0;
		
		
		if(rsCheck.equals(rsCheck2)) {
			result = rd.updateRsCheck(ticketCode);
			md.plusScore(id);			
		}
		
				
		request.setAttribute("result", result);
		
		
		return "reservationUpdate";
	}

}