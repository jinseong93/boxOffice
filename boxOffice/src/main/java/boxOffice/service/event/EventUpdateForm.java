package boxOffice.service.event;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.EventDao;
import boxOffice.model.Event;

public class EventUpdateForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int evNum = Integer.parseInt(request.getParameter("evNum"));
		String pageNum = request.getParameter("pageNum");
		
		EventDao ed = EventDao.getInstance();
		Event event = ed.select(evNum);
		
		request.setAttribute("event", event);
		request.setAttribute("evNum", evNum);
		request.setAttribute("pageNum", pageNum);
		
		return "eventUpdateForm";
	}
}
