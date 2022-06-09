package boxOffice.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Review;

public class ReviewDao {

	private static ReviewDao instance = new ReviewDao();
	private ReviewDao() {}
	public static ReviewDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
			try {
				Reader reader = Resources.getResourceAsReader("configuration.xml");
				SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
				session = ssf.openSession(true);
			}catch (Exception e) {
				System.out.println("review 연결에러 : " + e.getMessage());
			}
	}
	public int getTotal() {
		return (int) session.selectOne("reviewns.getTotal");
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewList", map);
	}
	public int insert(Review review) {
		return session.insert("reviewns.insert", review);
	}
	public void readCountUpdate(int rvNum) {
		session.update("reviewns.readCountUpdate", rvNum);
	}
	public int delete(int rvNum) {
		return session.delete("reviewns.delete", rvNum);
	}
	public Review select(int rvNum) {
		return (Review) session.selectOne("reviewns.select", rvNum);
	}
	public int update(Review review) {
		return session.update("reviewns.update", review);
	}
	public void updateLike(int rvNum) {
		session.update("reviewns.updateLike", rvNum);
	}
	public void mvCodeUpdate(Review review) {
		session.update("reviewns.mvCodeUpdate", review);
		
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewNowClosedList(int startRow, int endRow, int mvCode) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("mvCode", mvCode);
		return session.selectList("reviewns.reviewNowClosedList", map);
	}
	public int deleteMaster(int rvNum) {
		return session.delete("reviewns.deleteMaster", rvNum);
	}
	
	@SuppressWarnings("unchecked")
	public List<Review> reviewMyList(int startRow1, int endRow1, String id) {
		HashMap<String, String> map=new HashMap<String, String>();
		String startRow = Integer.toString(startRow1);
		String endRow = Integer.toString(endRow1);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		return session.selectList("reviewns.mylist",map);
	}
	public int getNowClosedTotal(int mvCode) {
		return (int) session.selectOne("reviewns.getNowClosedTotal", mvCode);
	}
	public int getCodeTotal(int mvCode) {
		return (int)session.selectOne("reviewns.getCodeTotal", mvCode);
	}
	public void addCount(int rvNum) {
		session.update("reviewns.addCount", rvNum);
	}
	public void subCount(int rvNum) {
		session.update("reviewns.subCount", rvNum);
	}
	public String selectId(int rvNum) {
		return (String) session.selectOne("reviewns.selectId", rvNum);
	}
	public int gradeSUM(int mvCode) {
		return (int) session.selectOne("reviewns.gradeSUM", mvCode);
	}
}