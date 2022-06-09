package boxOffice.service.main;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MovieDao;
import boxOffice.model.Movie;


public class Main implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		MovieDao md = MovieDao.getInstance();
		List<Movie> list = md.mainList();
		
		request.setAttribute("list", list);
		   
			
		return "main";
	}

}
