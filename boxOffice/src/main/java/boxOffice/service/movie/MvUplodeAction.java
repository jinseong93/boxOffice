package boxOffice.service.movie;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import boxOffice.dao.MovieDao;
import boxOffice.model.Movie;

public class MvUplodeAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		String real = request.getSession().getServletContext().getRealPath("images/posters");
		int maxSize = 1024 * 1024 * 5;	
		MultipartRequest mr;
		MovieDao md = MovieDao.getInstance();
		Movie movie = new Movie();
		
		try {
			mr = new MultipartRequest(request, real, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
			int mvCode = md.selectMvCode();
			String poster = mr.getFilesystemName("poster");	
			String mvTilte = mr.getParameter("mvTitle");
			int mvTag = Integer.parseInt(mr.getParameter("mvTag"));
			String director = mr.getParameter("director");
			String majorActor = mr.getParameter("majorActor");
			String openDate = mr.getParameter("openDate");
			String mvAge = mr.getParameter("mvAge");
			String runningTime = mr.getParameter("runningTime");
			String genre = mr.getParameter("genre");
			String mvInfo = mr.getParameter("mvInfo");
			String mvContent = mr.getParameter("mvContent");
			Date sqlDate = Date.valueOf(openDate);
			
			movie.setMvCode(mvCode);
			movie.setPoster(poster);
			movie.setMvTitle(mvTilte);
			movie.setMvTag(mvTag);
			movie.setDirector(director);
			movie.setMajorActor(majorActor);
			movie.setOpenDate(sqlDate);
			movie.setMvAge(mvAge);
			movie.setRunningTime(runningTime);
			movie.setGenre(genre);
			movie.setMvInfo(mvInfo);
			movie.setMvContent(mvContent);
			
			if (mvTag == 3) {
				int result = md.insert0(movie);
				request.setAttribute("result", result);
			} else {
				int result = md.insert(movie);
				request.setAttribute("result", result);
			}
					
		} catch (IOException e) {
			System.out.println("에러 : " + e.getMessage());
		}
		
		
   		return "mvUplode";
		
	}

}
