package boxOffice.model;

public class Reservation {

	private int rsCode;
	private int nsCode;
	private int mvCode; 
	private String seats;
	private String id; 
	private int ticketCode; 
	private int finalPrice;
	private String rsCheck;
	private String shCheck;
	private String mvTitle;
	private String rvCheck;
	
	public String getRvCheck() {
		return rvCheck;
	}
	public void setRvCheck(String rvCheck) {
		this.rvCheck = rvCheck;
	}
	public String getSeats() {
		return seats;
	}
	public void setSeats(String seats) {
		this.seats = seats;
	}
	
	

	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public String getShCheck() {
		return shCheck;
	}
	public void setShCheck(String shCheck) {
		this.shCheck = shCheck;
	}
	public String getRsCheck() {
		return rsCheck;
	}
	public void setRsCheck(String rsCheck) {
		this.rsCheck = rsCheck;
	}
	public int getRsCode() {
		return rsCode;
	}
	public void setRsCode(int rsCode) {
		this.rsCode = rsCode;
	}
	public int getMvCode() {
		return mvCode;
	}
	public void setMvCode(int mvCode) {
		this.mvCode = mvCode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTicketCode() {
		return ticketCode;
	}
	public void setTicketCode(int ticketCode) {
		this.ticketCode = ticketCode;
	}
	public int getFinalPrice() {
		return finalPrice;
	}
	public void setFinalPrice(int finalPrice) {
		this.finalPrice = finalPrice;
	}
	public int getNsCode() {
		return nsCode;
	}
	public void setNsCode(int nsCode) {
		this.nsCode = nsCode;
	} 
	
}
