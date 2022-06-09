package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Reservation;


public class ReservationDao {
	private static ReservationDao instance = new ReservationDao();
	private ReservationDao() {}
	public static ReservationDao getInstance() {
		return instance;
	}
	private static SqlSession session;  //mybatis를 사용할 객체.
	static {	
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("연결에러 : "+e.getMessage());
		}
	}
	public Reservation select(int rsCode) {
		return (Reservation) session.selectOne("reservationns.select",rsCode);
	}
	
	public int insert(Reservation reservation) {
		return session.insert("reservationns.insert", reservation);
	}
	
	public int selectCode1() {
		// TODO Auto-generated method stub
		return (int) session.selectOne("reservationns.selectCode1");
	}
	public int insertm(Reservation reservation) {
		// TODO Auto-generated method stub
		return session.insert("reservationns.insertm", reservation);
	}
	
	public int insertp(Reservation reservation) {
		// TODO Auto-generated method stub
		return session.insert("reservationns.insertp", reservation);
	}
	
	public int rsCheckY(String id) {
		return session.update("reservationns.rsCheckY",id);
	}
	
	public int getTiketTotal(String id) {
		// TODO Auto-generated method stub
		return (int) session.selectOne("reservationns.getTiketTotal",id);
	}
	public int getEndTiketTotal(String id) {
		// TODO Auto-generated method stub
		return (int) session.selectOne("reservationns.getEndTiketTotal",id);
	}
	
	@SuppressWarnings("unchecked")
	public List<Reservation> selectEndTiketList(int startRow2, int endRow2, String id) {
		HashMap<String, String> map=new HashMap<String,String>();
		String startRow = Integer.toString(startRow2);
		String endRow = Integer.toString(endRow2);
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		return session.selectList("reservationns.selectEndTiketList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Reservation> selectTiketList(int startRow1, int endRow1, String id) {
		HashMap<String, String> map=new HashMap<String,String>();
		String startRow = Integer.toString(startRow1);
		String endRow = Integer.toString(endRow1);
		
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		return session.selectList("reservationns.selectTiketList",map);
	}
	public String selectCode(String ticketCode) {
		// TODO Auto-generated method stub
		return (String)session.selectOne("reservationns.selectCode",ticketCode);
	}
	public Reservation selectTicketinfo(String rsCode) {
		// TODO Auto-generated method stub
		return (Reservation)session.selectOne("reservationns.selectTicketinfo",rsCode);
	}
	@SuppressWarnings("unchecked")
	public List<Reservation> selectSeatsList(String ticketCode) {
		// TODO Auto-generated method stub
		return session.selectList("reservationns.selectSeatsList",ticketCode);
	}
	
	@SuppressWarnings("unchecked")
	public List<Reservation> disableSeatsList(int nsCode){
		return session.selectList("reservationns.disableSeatsList", nsCode);
	}
	public int getTotal() {
		int total=0;
		return (int)session.selectOne("reservationns.gettotal",total);
	}
	
	@SuppressWarnings("unchecked")
	public List<Reservation> selectList(int startRow, int endRow) {
		
		HashMap<String, Integer> map=new HashMap<String,Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return session.selectList("reservationns.selectList",map);
	}
	public int updateRsCheck(int ticketCode) {
		// TODO Auto-generated method stub
		return (int)session.update("reservationns.updateRsCheck",ticketCode);
	}
	
	public int updateShCheck(int ticketCode) {
		// TODO Auto-generated method stub
		return (int)session.update("reservationns.updateShCheck",ticketCode);
	}
	public void updateRvCheck(String rsCode) {
		
		session.update("reservationtr.updateRvCheck", rsCode);
	}
	
	public int getSearchTotal(String search,String whereM) {
		HashMap<String, String> map=new HashMap<String,String>();
		map.put("search", search);
		map.put("whereM", whereM);
		return (int)session.selectOne("reservationns.gettotalsearch",map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Reservation> selectListsearch(int startRow, int endRow, String search,String whereM) {
		HashMap<String, String> map=new HashMap<String,String>();
		String startRowS = Integer.toString(startRow);
		String endRowS = Integer.toString(endRow);

		map.put("startRow", startRowS);
		map.put("endRow", endRowS);
		map.put("search", search);
		map.put("whereM", whereM);
		System.out.println(startRowS+" "+endRowS+" "+search+" "+whereM);
		
		return session.selectList("reservationns.selectSearchList",map);
	}
	public int getCodeTotal(int mvCode) {
		
		return (int)session.selectOne("reservationns.getCodeTotal",mvCode);
	}
	public void updateShcheck2(int nscode) {
		session.update("reservationns.updateShcheck2",nscode);
		
	}
	public void updateShcheck4(String showingDay, String screenTime) {
		HashMap<String, String> map=new HashMap<String,String>();
		String screenTime1 = new String(screenTime);


		map.put("showingDay", showingDay);
		map.put("screenTime", screenTime1);

		session.update("reservationns.updateShcheck4",map);
		
	}
	

}