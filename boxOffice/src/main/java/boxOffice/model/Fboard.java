package boxOffice.model;

import java.sql.Date;

public class Fboard {
	private int fbNum;
    private String fbTitle;
    private String id;
    private String photo;
    private String fbContent;
    private Date fbDate;
    private String fbDel;
    private int fbReadCount;
    private int replyCount;
    public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public String getFbContent() {
		return fbContent;
	}
	public void setFbContent(String fbContent) {
		this.fbContent = fbContent;
	}
	public int getFbNum() {
		return fbNum;
	}
	public void setFbNum(int fbNum) {
		this.fbNum = fbNum;
	}
	public String getFbTitle() {
		return fbTitle;
	}
	public void setFbTitle(String fbTitle) {
		this.fbTitle = fbTitle;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Date getFbDate() {
		return fbDate;
	}
	public void setFbDate(Date fbDate) {
		this.fbDate = fbDate;
	}
	public String getFbDel() {
		return fbDel;
	}
	public void setFbDel(String fbDel) {
		this.fbDel = fbDel;
	}
	public int getFbReadCount() {
		return fbReadCount;
	}
	public void setFbReadCount(int fbReadCount) {
		this.fbReadCount = fbReadCount;
	}
    
	
    
}
