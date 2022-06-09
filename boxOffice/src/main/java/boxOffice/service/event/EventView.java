package boxOffice.service.event;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.EventDao;
import boxOffice.model.Event;

public class EventView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int evNum = Integer.parseInt(request.getParameter("evNum"));
		String pageNum = request.getParameter("pageNum");
		
		EventDao ed = EventDao.getInstance();
		ed.readCountUpdate(evNum);	// 조회수 증가
		
		Event event = ed.select(evNum);	// 이벤트 불러오기

		request.setAttribute("pageNum", pageNum);
		request.setAttribute("evNum", evNum);
		request.setAttribute("event", event);

		return "eventView";
	}

}
