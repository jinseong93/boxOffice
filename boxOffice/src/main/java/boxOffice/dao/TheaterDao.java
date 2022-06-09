package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Theater;


public class TheaterDao {
	private static TheaterDao instance = new TheaterDao();
	private TheaterDao() {}
	public static TheaterDao getInstance() {
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
	public Theater select(int ttCode) {
		return (Theater) session.selectOne("theaterns.select",ttCode);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Theater> selectTheaterList(int mvCode) {
		/*
		 * HashMap<String, Integer> map=new HashMap<String,Integer>();
		 * map.put("movieCode", movieCode);
		 */			
		return session.selectList("theaterns.selectTheaterList",mvCode);
	}
	@SuppressWarnings("unchecked")
	public List<Theater> getTheaterlist() {
		// TODO Auto-generated method stub
		return session.selectList("theaterns.getTheaterlist");
	}
	
}