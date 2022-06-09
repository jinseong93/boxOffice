package boxOffice.service.event;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import boxOffice.dao.EventDao;
import boxOffice.model.Event;

public class EventWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Event event = new Event();
		
		// 파일 업로드 경로
		String real = request.getSession().getServletContext().getRealPath("images/event");
		int maxSize = 1024 * 1024 * 50; // 최대 사이즈 50M
		try {
			// new DefaultFileRenamePolicy() 이름이 같은 파일이 또 들어오면 이름 변경
			MultipartRequest mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
			String evTitle = mr.getParameter("evTitle");
			String id= (String)session.getAttribute("id");
			String evStart = mr.getParameter("evStart");
			String evEnd =  mr.getParameter("evEnd");
			String evTitlePhoto = mr.getFilesystemName("evTitlePhoto"); // input file 불러오기
			String evContentPhoto = mr.getFilesystemName("evContentPhoto");
			String evContent = mr.getParameter("evContent");
			 
			event.setEvTitle(evTitle);
			event.setId(id);	
			event.setEvStart(evStart);
			event.setEvEnd(evEnd);
			event.setEvTitlePhoto(evTitlePhoto);
			event.setEvContentPhoto(evContentPhoto);
			event.setEvContent(evContent);
			
		} catch (IOException e) {
			System.out.println("에러 : " + e.getMessage());
		}
		
		EventDao ed = EventDao.getInstance();
		int result = ed.insert(event);
		
		request.setAttribute("result", result);
		return "eventWrite";
	}

}
