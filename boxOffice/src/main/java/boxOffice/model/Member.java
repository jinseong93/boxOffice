package boxOffice.model;

import java.sql.Date;

public class Member {
	
	private String id;
	private String password;
	private String name;
	private int textcount;
	private int ticketcount; 
	private String tel;
	private String address;
	private Date reg_date;
	private int score;
	private String memberDel;
	
	public String getId() {	
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTextcount() {
		return textcount;
	}
	public void setTextcount(int textcount) {
		this.textcount = textcount;
	}
	public int getTicketcount() {
		return ticketcount;
	}
	public void setTicketcount(int ticketcount) {
		this.ticketcount = ticketcount;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getMemberDel() {
		return memberDel;
	}
	public void setMemberDel(String memberDel) {
		this.memberDel = memberDel;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	
			
			
}
