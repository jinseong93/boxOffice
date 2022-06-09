package boxOffice.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Reply;

public class ReplyDao {
	private static ReplyDao instance = new ReplyDao();
	private ReplyDao() { }
	public static ReplyDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("댓글 DB연결 에러 : "+e.getMessage());
		}
	}
	public int selectStep(int ref) {
		return (int) session.selectOne("replyns.selectStep", ref);
	}
	
	public int insertRe(Reply reply) {
		return session.insert("replyns.insertRe", reply);
	}
	
	public int insert(Reply reply) {
		return session.insert("replyns.insert", reply);
	}
	
	/* 댓글 카운트 */
	@SuppressWarnings("unchecked")
	public List<Reply> rpList(int rvNum) {
		return session.selectList("replyns.rpList", rvNum);
	}
	
	/* 삭제된 댓글도 포함된 정보 */
	@SuppressWarnings("unchecked")
	public List<Reply> rpList2(int rvNum) {
		return session.selectList("replyns.rpList2",rvNum);
	}
	public int update(Reply reply) {
		return session.update("replyns.update", reply);
	}
	public int delete(int rpNum) {
		return session.delete("replyns.delete", rpNum);
	}
	public int deleteMaster(int rpNum) {
		return session.update("replyns.deleteMaster", rpNum);
	}

}

