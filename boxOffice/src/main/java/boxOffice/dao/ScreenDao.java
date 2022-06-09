package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Screen;


public class ScreenDao {
	private static ScreenDao instance = new ScreenDao();
	private ScreenDao() {}
	public static ScreenDao getInstance() {
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
	public Screen select(int screenCode) {
		return (Screen) session.selectOne("screenns.select",screenCode);
	}
	@SuppressWarnings("unchecked")
	public List<Screen> selectScreenNum(int mvCode,int ttCode) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("mvCode", mvCode);
		map.put("ttCode", ttCode);
		
		
		return session.selectList("screenns.selectScreenNum",map);
	}
	
	public Screen selectScreenCode(int mvCode,int ttCode,String screenTime) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		HashMap<String, String> map1=new HashMap<String,String>();
		map.put("mvCode", mvCode);
		map.put("ttCode", ttCode);
		map1.put("screenTime", screenTime);
		
		return (Screen) session.selectOne("screenns.selectScreenCode",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Screen> selectScreenList(int mvCode, int ttCode, String showingDay) {
		
		HashMap<String, String> map=new HashMap<String,String>();
		
		String mvCode2 = Integer.toString(mvCode);
		String ttCode2 = Integer.toString(ttCode);
		
		
		map.put("mvCode", mvCode2); 
		map.put("ttCode", ttCode2);
		map.put("showingDay", showingDay);
		 
		return session.selectList("screenns.selectScreenList",map);
	}
	

	@SuppressWarnings("unchecked")
	public List<Screen> selectScreenCode3( String screenTime) {
		HashMap<String, String> map=new HashMap<String,String>();
		
		String screenTime1 = new String(screenTime);

		map.put("screenTime", screenTime1);
		
		return session.selectList("screenns.selectScreenCode3",map);
	}
	@SuppressWarnings("unchecked")
	public List<Screen> getScreenlist() {
		return session.selectList("screensc.getScreenlist");
	}

}
