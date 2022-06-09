package boxOffice.service.signin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MovieDao;
import boxOffice.dao.NowShowingDao;
import boxOffice.dao.ReservationDao;
import boxOffice.dao.ScreenDao;
import boxOffice.dao.TheaterDao;
import boxOffice.model.Movie;
import boxOffice.model.NowShowing;
import boxOffice.model.Reservation;
import boxOffice.model.Screen;
import boxOffice.model.Theater;

public class MyTicketView implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String ticketCode=request.getParameter("ticketCode");
		int nsCode=Integer.parseInt(request.getParameter("nsCode"));
		String mvTitle=request.getParameter("mvTitle");
		ReservationDao rv=ReservationDao.getInstance();
		System.out.println(nsCode);
		
		
		List<Reservation> list = rv.selectSeatsList(ticketCode);
		
		NowShowingDao ns=NowShowingDao.getInstance();
		
		NowShowing nowshowing=ns.select(nsCode);
		int screenCode=nowshowing.getScreenCode();
		System.out.println(screenCode);
		int mvCode=nowshowing.getMvCode();
		int ttCode=nowshowing.getTtCode();
		TheaterDao td=TheaterDao.getInstance();
		Theater theater=td.select(ttCode);
		
		System.out.println(mvCode);
		MovieDao md=MovieDao.getInstance();
		Movie movie=md.select(mvCode);
		ScreenDao sd=ScreenDao.getInstance();
		Screen screen=sd.select(screenCode);
		request.setAttribute("theater", theater);
		request.setAttribute("movie", movie);
		request.setAttribute("screen", screen);
		request.setAttribute("nowshowing", nowshowing);
		request.setAttribute("list", list);
		request.setAttribute("mvTitle", mvTitle);
		request.setAttribute("ticketCode",ticketCode);
		
		return "myticketView";
	}

}
