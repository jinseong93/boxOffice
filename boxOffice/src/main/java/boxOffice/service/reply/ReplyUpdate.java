package boxOffice.service.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.model.Reply;
import boxOffice.dao.ReplyDao;

public class ReplyUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		int rpNum = Integer.parseInt(request.getParameter("rpNum"));
		String rpContent = request.getParameter("rpContent");
		
		Reply reply = new Reply();
		reply.setRvNum(rvNum);
		reply.setRpNum(rpNum);
		reply.setRpContent(rpContent);
		
		ReplyDao rd = ReplyDao.getInstance();
		int result = rd.update(reply);
		
		request.setAttribute("rvNum", rvNum);
		/* request.setAttribute("rpNum", rpNum); */
		request.setAttribute("result", result);
		
		return "replyUpdate";
	}

}
