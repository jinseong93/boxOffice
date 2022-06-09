package boxOffice.service.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Store2 implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		String image =request.getParameter("image");
		System.out.println(image);
		String pdName =request.getParameter("pdName");
		
		
		request.setAttribute("image", image);
		request.setAttribute("pdName", pdName);
		
		
		return "store2";
	}

}
