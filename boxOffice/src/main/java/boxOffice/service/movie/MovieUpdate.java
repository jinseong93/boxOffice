package boxOffice.service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MovieDao;
import boxOffice.model.Movie;

public class MovieUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		Integer mvCode = Integer.parseInt(request.getParameter("mvCode"));
		Integer mvTag = Integer.parseInt(request.getParameter("mvTag"));
		
		MovieDao md=MovieDao.getInstance();
		int result = 0;
		
		if(mvTag==2) {
			result = md.updateClosed(mvCode);
		}
		if(mvTag==3) {
			result = md.updateNow(mvCode);
		}
		
				
		request.setAttribute("result", result);
		
		
		return "movieUpdate";
	}

}