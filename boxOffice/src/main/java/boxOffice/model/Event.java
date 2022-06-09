package boxOffice.model;

import java.sql.Date;

public class Event {
	private int evNum;
	private String evTitle;
	private String evContent;
	private String id;
	private String evTitlePhoto;
	private String evContentPhoto;
	private Date evDate;
	private String evStart;
	private String evEnd;
	private String evDel;
	private int evReadCount;
	
	public String getEvDel() {
		return evDel;
	}
	public void setEvDel(String evDel) {
		this.evDel = evDel;
	}
	public int getEvNum() {
		return evNum;
	}
	public void setEvNum(int evNum) {
		this.evNum = evNum;
	}
	public String getEvTitle() {
		return evTitle;
	}
	public void setEvTitle(String evTitle) {
		this.evTitle = evTitle;
	}
	public String getEvContent() {
		return evContent;
	}
	public void setEvContent(String evContent) {
		this.evContent = evContent;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEvTitlePhoto() {
		return evTitlePhoto;
	}
	public void setEvTitlePhoto(String evTitlePhoto) {
		this.evTitlePhoto = evTitlePhoto;
	}
	public String getEvContentPhoto() {
		return evContentPhoto;
	}
	public void setEvContentPhoto(String evContentPhoto) {
		this.evContentPhoto = evContentPhoto;
	}
	public Date getEvDate() {
		return evDate;
	}
	public void setEvDate(Date evDate) {
		this.evDate = evDate;
	}
	public String getEvStart() {
		return evStart;
	}
	public void setEvStart(String evStart) {
		this.evStart = evStart;
	}
	public String getEvEnd() {
		return evEnd;
	}
	public void setEvEnd(String evEnd) {
		this.evEnd = evEnd;
	}
	public int getEvReadCount() {
		return evReadCount;
	}
	public void setEvReadCount(int evReadCount) {
		this.evReadCount = evReadCount;
	}
	
	
}
