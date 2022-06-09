package boxOffice.service.event;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.EventDao;

public class EventDelete implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int evNum = Integer.parseInt(request.getParameter("evNum"));
		EventDao ed = EventDao.getInstance();
		int result = ed.delete(evNum);
		
		request.setAttribute("result", result);
		request.setAttribute("evNum", evNum);
		
		return "eventDelete";
	}

}
