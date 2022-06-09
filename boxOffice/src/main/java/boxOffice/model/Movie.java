package boxOffice.model;

import java.sql.Date;

public class Movie {
	private int mvCode;
	private String mvTitle;
	private int mvTag;
	private Date openDate;
	private String director;
	private String majorActor;
	private String runningTime;
	private String genre;
	private String poster;
	private String mvInfo;
	private String mvContent;
	private int mvPrice;
	private String mvGrade;
	private String mvAge;
	private int movieStar;
	
	public int getMovieStar() {
		return movieStar;
	}
	public int getMvCode() {
		return mvCode;
	}
	public void setMvCode(int mvCode) {
		this.mvCode = mvCode;
	}
	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public int getMvTag() {
		return mvTag;
	}
	public void setMvTag(int mvTag) {
		this.mvTag = mvTag;
	}
	public Date getOpenDate() {
		return openDate;
	}
	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getMajorActor() {
		return majorActor;
	}
	public void setMajorActor(String majorActor) {
		this.majorActor = majorActor;
	}
	public String getRunningTime() {
		return runningTime;
	}
	public void setRunningTime(String runningTime) {
		this.runningTime = runningTime;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getMvInfo() {
		return mvInfo;
	}
	public void setMvInfo(String mvInfo) {
		this.mvInfo = mvInfo;
	}
	public String getMvContent() {
		return mvContent;
	}
	public void setMvContent(String mvContent) {
		this.mvContent = mvContent;
	}
	public int getMvPrice() {
		return mvPrice;
	}
	public void setMvPrice(int mvPrice) {
		this.mvPrice = mvPrice;
	}
	public String getMvGrade() {
		return mvGrade;
	}
	public void setMvGrade(String mvGrade) {
		this.mvGrade = mvGrade;
	}
	public String getMvAge() {
		return mvAge;
	}
	public void setMvAge(String mvAge) {
		this.mvAge = mvAge;
	}
	public void setMvGrade(int mvGrade2) {
		
	}
	public void setRunningTime(int runningTime2) {
		
	}
	public void setMovieStar(int movieStar) {
		
	}
	
}
