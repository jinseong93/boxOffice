package boxOffice.model;

import java.sql.Date;

public class Review {

	 private int rvNum;
	 private String rvTitle;
	 private String rvContent;
	 private String id;
	 private int mvGrade;
	 private int rsCode;
	 private int rvLike;
	 private Date rvDate;
	 private String rvDel;
	 private String mvTitle;
	 private int mvCode;
	 private int rpCount;
	 
	 public int getRpCount() {
		return rpCount;
	}
	public void setRpCount(int rpCount) {
		this.rpCount = rpCount;
	}
	public int getMvCode() {
		return mvCode;
	}
	public void setMvCode(int mvCode) {
		this.mvCode = mvCode;
	}
	private int rvReadCount;
	 
	public int getRvNum() {
		return rvNum;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
	}
	public String getRvTitle() {
		return rvTitle;
	}
	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getMvGrade() {
		return mvGrade;
	}
	public void setMvGrade(int mvGrade) {
		this.mvGrade = mvGrade;
	}
	public int getRsCode() {
		return rsCode;
	}
	public void setRsCode(int rsCode) {
		this.rsCode = rsCode;
	}
	public int getRvLike() {
		return rvLike;
	}
	public void setRvLike(int rvLike) {
		this.rvLike = rvLike;
	}
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	public String getRvDel() {
		return rvDel;
	}
	public void setRvDel(String rvDel) {
		this.rvDel = rvDel;
	}
	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public int getRvReadCount() {
		return rvReadCount;
	}
	public void setRvReadCount(int rvReadCount) {
		this.rvReadCount = rvReadCount;
	}
	 
	 
}
