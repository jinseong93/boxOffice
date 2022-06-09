package boxOffice.model;

import java.sql.Date;

public class Reply {
	private int rpNum;
	private int rvNum;
	private String rpContent;
	private String id;
	private Date  rpDate;
	private String rpDel;
	private int ref;
	private int ref_level;
	private int ref_step;
	
	public int getRpNum() {
		return rpNum;
	}
	public void setRpNum(int rpNum) {
		this.rpNum = rpNum;
	}
	public int getRvNum() {
		return rvNum;
	}
	public void setRvNum(int rvNum) {
		this.rvNum = rvNum;
	}
	public String getRpContent() {
		return rpContent;
	}
	public void setRpContent(String rpContent) {
		this.rpContent = rpContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getRpDate() {
		return rpDate;
	}
	public void setRpDate(Date rpDate) {
		this.rpDate = rpDate;
	}
	public String getRpDel() {
		return rpDel;
	}
	public void setRpDel(String rpDel) {
		this.rpDel = rpDel;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRef_level() {
		return ref_level;
	}
	public void setRef_level(int ref_level) {
		this.ref_level = ref_level;
	}
	public int getRef_step() {
		return ref_step;
	}
	public void setRef_step(int ref_step) {
		this.ref_step = ref_step;
	}
	
}
