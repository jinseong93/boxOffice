package boxOffice.service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ScreenDao;
import boxOffice.dao.TheaterDao;

public class MvUplodeForm implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {

		return "mvUplodeForm";
	}

}
