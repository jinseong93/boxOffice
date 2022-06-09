package boxOffice.model;

public class NowShowing {
	private int nsCode;
	private int mvCode;
	private int ttCode;
	private int screenCode;
	private String showingDay;
	private String pchk;
	private int screenTime;
	
	public int getNsCode() {
		return nsCode;
	}
	public void setNsCode(int nsCode) {
		this.nsCode = nsCode;
	}
	public int getMvCode() {
		return mvCode;
	}
	public void setMvCode(int mvCode) {
		this.mvCode = mvCode;
	}
	public int getTtCode() {
		return ttCode;
	}
	public void setTtCode(int ttCode) {
		this.ttCode = ttCode;
	}
	public int getScreenCode() {
		return screenCode;
	}
	public void setScreenCode(int screenCode) {
		this.screenCode = screenCode;
	}
	public String getShowingDay() {
		return showingDay;
	}
	public void setShowingDay(String showingDay) {
		this.showingDay = showingDay;
	}
	public String getPchk() {
		return pchk;
	}
	public void setPchk(String pchk) {
		this.pchk = pchk;
	}
	public int getScreenTime() {
		return screenTime;
	}
	public void setScreenTime(int screenTime) {
		this.screenTime = screenTime;
	}

}
