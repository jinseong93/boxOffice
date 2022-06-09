package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Fboard;
import boxOffice.model.Review;

public class FboardDao {
	private static FboardDao instance = new FboardDao();
	private FboardDao() { }
	public static FboardDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("자유게시판 DB연결 에러 : "+e.getMessage());
		}
	}
	public int insert(Fboard fboard) {
		
		return session.insert("fboardns.insert", fboard);
	}
	public int getTotal() {
		
		return (int) session.selectOne("fboardns.getTotal");
	}
	@SuppressWarnings("unchecked")
	public List<Fboard> selectList(int startRow, int endRow) {
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("fboardns.list",map);
	}
	public void readcountUpdate(int fbNum) {
		
		session.update("fboardns.readcountUpdate", fbNum);
	}
	public Fboard select(int fbNum) {
		
		return (Fboard) session.selectOne("fboardns.selectOne", fbNum);
	}
	@SuppressWarnings("unchecked")
	public List<Fboard> searchFboard(String result, String resultnum) {
		HashMap<String, String> map=new HashMap<String,String>();
		map.put("result", result);
		map.put("resultnum", resultnum);
		return session.selectList("fboardns.searchfboardlist",map);
	}
	@SuppressWarnings("unchecked")
	public List<Fboard> selectmainList() {
		
		return session.selectList("fboardns.selectmainList");
	}
	public int update(Fboard fboard) {
		
		return session.update("fboardns.update", fboard);
	}
	public int delete(int fbNum) {

		return session.update("fboardns.delete", fbNum);
	}
	@SuppressWarnings("unchecked")
	public List<Fboard> selectmyList(int startRow1, int endRow1, String id) {
		HashMap<String, String> map=new HashMap<String,String>();
		String startRow = Integer.toString(startRow1);
		String endRow = Integer.toString(endRow1);
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		return session.selectList("fboardns.mylist",map);
	}
	public int getmyTotal(String id) {
		// TODO Auto-generated method stub
		return (int) session.selectOne("fboardns.getmyTotal",id);
	}
	public void plusCount(int fbNum) {
		
		session.update("fboardns.plusCount", fbNum);
	}
	public void minusCount(int fbNum) {
		
		session.update("fboardns.minusCount", fbNum);
	}
	public String selectId(int fbNum) {
		
		return (String) session.selectOne("fboardns.selectId", fbNum);
	}
	public int suspend(int fbNum) {
		
		return (int) session.update("fboardns.suspend", fbNum);
	}
	public int getSearchTotal(String fbsearch, String whereFb) {
		HashMap<String, String> map=new HashMap<String,String>();
		map.put("fbsearch", fbsearch);
		map.put("whereFb", whereFb);
		return (int)session.selectOne("fboardns.gettotalsearch",map);
	}
	@SuppressWarnings("unchecked")
	public List<Fboard> selectListsearch(int startRow, int endRow, String fbsearch, String whereFb) {
		HashMap<String, String> map=new HashMap<String,String>();
		String startRowS = Integer.toString(startRow);
		String endRowS = Integer.toString(endRow);

		map.put("startRow", startRowS);
		map.put("endRow", endRowS);
		map.put("fbsearch", fbsearch);
		map.put("whereFb", whereFb);
		return session.selectList("fboardns.selectSearchList",map);
	}
	
	
}
