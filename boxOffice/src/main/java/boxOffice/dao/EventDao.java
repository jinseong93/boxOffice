package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Event;

public class EventDao {

	private static EventDao instance = new EventDao();
	private EventDao() {}
	public static EventDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
			try {
				Reader reader = Resources.getResourceAsReader("configuration.xml");
				SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
				session = ssf.openSession(true);
			}catch (Exception e) {
				System.out.println("event 연결에러 : " + e.getMessage());
			}
	}
	public int getTotal() {
		return (int) session.selectOne("eventns.getTotal");
	}
	
	@SuppressWarnings("unchecked")
	public List<Event> list(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return  session.selectList("eventns.list", map);
	}
	public int insert(Event event) {
		return session.insert("eventns.insert", event);
	}
	public void readCountUpdate(int evNum) {
		session.update("eventns.readCountUpdate", evNum);
	}
	public Event select(int evNum) {
		return (Event) session.selectOne("eventns.select", evNum);
	}
	public int delete(int evNum) {
		return session.update("eventns.delete", evNum);
	}
	public int update(Event event) {
		return session.update("eventns.update", event);
	}
}
