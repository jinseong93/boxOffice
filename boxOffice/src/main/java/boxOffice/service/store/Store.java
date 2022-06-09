package boxOffice.service.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.StoreDao;

public class Store implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		StoreDao st = StoreDao.getInstance();
		List<boxOffice.model.Store> list7 = st.callList();
		
		request.setAttribute("list7", list7);
		
		return "store";
	}

	public static void setPdCode(int pdCode) {
		// TODO Auto-generated method stub
		
	}

	public static void setPdPrice(int pdPrice) {
		// TODO Auto-generated method stub
		
	}

}
