package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.NowShowing;

public class NowShowingDao {
	private static NowShowingDao instance = new NowShowingDao();
	private NowShowingDao() {}
	public static NowShowingDao getInstance() {
		return instance;
	}
	// database connection pool
	private static SqlSession session;
	static {	// 초기화 블록
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("연결에러 : "+e.getMessage());
		}
	}
	
	public NowShowing select(int nsCode) {
		return (NowShowing) session.selectOne("nowShowingns.select",nsCode);
	}
	
	public NowShowing selectNsCode(int mvCode, int ttCode, int screenCode, String showingDay) {
		HashMap<String, String> map=new HashMap<String,String>();
		
		String mvCode2 = Integer.toString(mvCode);
		String ttCode2 = Integer.toString(ttCode);
		String screenCode2 = Integer.toString(screenCode);
		
		map.put("mvCode", mvCode2);
		map.put("ttCode", ttCode2);
		map.put("screenCode", screenCode2);
		map.put("showingDay", showingDay);
		
		return (NowShowing) session.selectOne("nowShowingns.selectNsCode",map);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<NowShowing> selectDayList(int mvCode, int ttCode) {
		
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("mvCode", mvCode);
		map.put("ttCode", ttCode);
		
		return session.selectList("nowShowingns.selectDayList",map);
	}
	
	public int selectNsCode2(int mvCode, int ttCode, int screenCode, String showingDay) {
		HashMap<String, String> map=new HashMap<String,String>();
		
		String mvCode2 = Integer.toString(mvCode);
		String ttCode2 = Integer.toString(ttCode);
		String screenCode2 = Integer.toString(screenCode);
		
		map.put("mvCode", mvCode2);
		map.put("ttCode", ttCode2);
		map.put("screenCode", screenCode2);
		map.put("showingDay", showingDay);
		
		return (int) session.selectOne("nowShowingns.selectNsCode2",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<NowShowing> selectList(int startRow, int endRow) {
		
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("nowShowingns.selectList",map);
	}
	
	public int getTotal() {
		int total=0;
		return (int)session.selectOne("nowShowingns.gettotal",total);
	}
	
	public int updatePchk(String showingDay, String screenTime) {
		HashMap<String, String> map=new HashMap<String,String>();
		
		String screenTime2 = screenTime;
		
		map.put("screenTime", screenTime2);
		map.put("showingDay", showingDay);
		
		return (int)session.update("nowShowingns.updatePchk",map);
	}
	
	public int updatePchk2(String showingDay, String screenTime) {
		
		HashMap<String, String> map=new HashMap<String,String>();
		
		String screenTime2 = screenTime;
		
		map.put("screenTime", screenTime2);
		map.put("showingDay", showingDay);
	
		return (int)session.update("nowShowingns.updatePchk2",map);
	}
	
	public int insert(NowShowing nowShowing) {
		// TODO Auto-generated method stub
		return session.insert("nowShowingns.insert",nowShowing);
	}
	@SuppressWarnings("unchecked")
	public List<NowShowing> selectNsCode3(int scCode,String showingDay) {
		HashMap<String, String> map=new HashMap<String,String>();
		String scCode2 = Integer.toString(scCode);
		map.put("scCode", scCode2);
		map.put("showingDay", showingDay);
		
		
		return session.selectList("nowShowingns.selectNsCode3",map);
	}
	
}
