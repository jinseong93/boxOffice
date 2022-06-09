package boxOffice.service.movie;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.NowShowingDao;
import boxOffice.dao.ReservationDao;
import boxOffice.dao.ScreenDao;
import boxOffice.model.NowShowing;
import boxOffice.model.Screen;

public class NowShowingUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		String showingDay = request.getParameter("showingDay");
		String screenTime =request.getParameter("screenTime");
		String pchk=request.getParameter("pchk");		
		String pchk2 = "n";
		String pchk3 = "y";
		ScreenDao sd=ScreenDao.getInstance();
		NowShowingDao nd = NowShowingDao.getInstance();
		ReservationDao rd= ReservationDao.getInstance();
		int result = 0;
		
		
		if(pchk.equals(pchk2)) {
			result = nd.updatePchk(showingDay,screenTime);
			List<Screen> sclist=sd.selectScreenCode3(screenTime);
			for(Screen sclists : sclist)
			{
				int scCode=sclists.getScreenCode();
				List<NowShowing> nscodes=nd.selectNsCode3(scCode,showingDay);
				for(NowShowing nscode : nscodes)
				{
				int	nscode1=nscode.getNsCode();
				rd.updateShcheck2(nscode1);
				}
			}
			
			
		}
		
		if(pchk.equals(pchk3)) {
			result = nd.updatePchk2(showingDay,screenTime);	
			rd.updateShcheck4(showingDay,screenTime);
		}
		
				
		request.setAttribute("result", result);
		
		
		return "nowShowingUpdate";
	}

}