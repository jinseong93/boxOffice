package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Movie;


public class MovieDao {
	private static MovieDao instance = new MovieDao();
	private MovieDao() {}
	public static MovieDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {	
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("연결에러 : "+e.getMessage());
		}
	}    

	@SuppressWarnings("unchecked")
	public List<Movie> mainList() {
		return session.selectList("moviens.mainList");
	}
	
	public Movie select(int mvCode) {
		return (Movie)session.selectOne("moviens.select", mvCode);

	}
	
	public int getTotalComing() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalComing", total);
	}

	public int getTotalNow() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalNow", total);
	}
	
	
	public int getTotalClosed() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalClosed", total);
	}
	
	@SuppressWarnings("unchecked")
	public List<Movie> selectList(int mvCode, int startRow, int endRow) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("mvCode", mvCode);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("moviens.selectInfo",map);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Movie> selectNowList(int startRow, int endRow) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("moviens.selectNowList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Movie> selectClosedList(int startRow, int endRow) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		
		return session.selectList("moviens.selectClosedList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Movie> selectComingList(int startRow, int endRow) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		
		return session.selectList("moviens.selectComingList",map);
	}

	public int updateNow(int mvCode) {
		
		return (int)session.update("moviens.updateNow",mvCode);
	}
	public int updateClosed(int mvCode) {
		
		return (int)session.update("moviens.updateClosed",mvCode);
	}
	public int selectMvCode() {
		
		return (int)session.selectOne("moviens.selectMvCode");
	}
	public int insert(Movie movie) {
		
		return session.insert("moviens.insert", movie);
	}
	
	public String selectTitle(int mvCode) {
		
		return (String) session.selectOne("moviens.selectTitle", mvCode);
	}
	
	
	public int getTotal() {
		int total=0;
		return (int)session.selectOne("moviens.gettotal",total);
	}
	
	
	public int updateMovieStar(int nowstar, int mvCode) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("nowstar", nowstar);
		map.put("mvCode", mvCode);
		return (int)session.update("moviens.updateMovieStar",map);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Movie> selectList(int startRow, int endRow) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("moviens.selectList",map);
	}
	public int getGrade(int mvCode) {
		return (int)session.selectOne("moviens.getGrade",mvCode);
	}
	public int updateGrade(double gradeUp, int mvCode) {
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("gradeUp", gradeUp);
		map.put("mvCode", mvCode);
		return (int)session.update("moviens.updateGrade",map);
		
	}
	public int insert0(Movie movie) {
		return session.insert("moviens.insert0", movie);
	}

}