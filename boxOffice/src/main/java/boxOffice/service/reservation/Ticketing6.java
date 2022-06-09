package boxOffice.service.reservation;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.MemberDao;
import boxOffice.dao.ReservationDao;
import boxOffice.model.Reservation;

public class Ticketing6 implements CommandProcess  {
	
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession(); 
		//int movieCode = (int)session.getAttribute("movieCode");
		 
		String id= (String)session.getAttribute("id");
		String mvTitle = request.getParameter("mvTitle");
		String ttLoc = request.getParameter("ttLoc");
		String ttName = request.getParameter("ttName");
		String showingDay = request.getParameter("showingDay");
		String screenTime = request.getParameter("screenTime");
		int screenNum = Integer.parseInt(request.getParameter("screenNum"));
		int nsCode = Integer.parseInt(request.getParameter("nsCode"));
		int mvCode = Integer.parseInt(request.getParameter("mvCode"));
		int age = Integer.parseInt(request.getParameter("age"));
		int mvPrice = Integer.parseInt(request.getParameter("mvPrice"));
		int people = Integer.parseInt(request.getParameter("people"));
		
		String rsCheck = request.getParameter("rsCheck");
		
		
		
			
		String[] seats = request.getParameterValues("seat");
		
		double age2 = 0.0;
		if(age==1) {age2=0.7;}
		else if (age==2) {age2=1;}
		else if (age==3) {age2=0.8;}
		else if (age==4) {age2=0.7;}
		else {age2=1;}
		
		double finalPrice = 0;
		
		MemberDao md = MemberDao.getInstance();
		int score = md.selectScore(id);
		System.out.println(score);
		
		md.ticketcountAdd(id); 
		md.scoreUpTT(id);
		
		double discount = 0.0;
		if(0<=score && score<=20) {discount = 1;}
		else if(21<=score && score<=40) {discount = 1;}
		else if(41<=score && score<=60) {discount = 1;}
		else if(61<=score && score<=80) {discount = 1;}
		else {discount = 1;}
		
		
		finalPrice = (people*mvPrice)*discount*age2;
		
		
		
		ReservationDao rd = ReservationDao.getInstance();
		int ticketCode = rd.selectCode1();
		
		if(rsCheck.equals("무통장 입금 :카카오뱅크1111-333-4444-5555")) {
			if (seats == null) return "ticketing7";
			else {
				for(int i=0; i<seats.length;i++) {
					Reservation reservation = new Reservation();
					reservation.setId(id);
					reservation.setNsCode(nsCode);
					reservation.setMvCode(mvCode);
					reservation.setFinalPrice((int)finalPrice);
					reservation.setSeats(seats[i]);
					reservation.setTicketCode(ticketCode);
					int result = rd.insertm(reservation);
					System.out.println(result);					
					md.plusScore(id);
					request.setAttribute("finalPrice", (int)finalPrice);
					
					
				}		
			}
		}
		else {
			if (seats == null) return "ticketing7";
			else {
				for(int i=0; i<seats.length;i++) {
					if(score>=seats.length*20) {
						Reservation reservation = new Reservation();
						reservation.setId(id);
						reservation.setNsCode(nsCode);
						reservation.setMvCode(mvCode);
						reservation.setFinalPrice(0);
						reservation.setSeats(seats[i]);
						reservation.setTicketCode(ticketCode);											
						int result = rd.insertp(reservation);
						System.out.println(result);
						md.reduceScore(id);
						finalPrice = 0;
						request.setAttribute("finalPrice", (int)finalPrice);
					}
					else {						
						return "ticketing7";
					}
				}		
			}
		}
		
	
		
		
		
		
		
		
		request.setAttribute("ticketCode", ticketCode);
		request.setAttribute("people", people);
		request.setAttribute("age", age);
		request.setAttribute("id", id);		
		request.setAttribute("mvTitle", mvTitle);
		request.setAttribute("ttLoc", ttLoc);
		request.setAttribute("ttName", ttName);
		request.setAttribute("showingDay", showingDay);
		request.setAttribute("screenTime", screenTime);
		request.setAttribute("screenNum", screenNum);
		request.setAttribute("nsCode", nsCode);
		request.setAttribute("mvPrice", mvPrice);
		
		
		
		
		
		return "ticketing6";
	}


}
