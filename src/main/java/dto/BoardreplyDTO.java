package dto;

import java.util.Date;

public class BoardreplyDTO {
	private int bno;
	private int rno;
	private String content;
	private String memberId;
	private Date regdate;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "BoardreplyDTO [bno=" + bno + ", rno=" + rno + ", content=" + content + ", memberId=" + memberId
				+ ", regdate=" + regdate + "]";
	}
	
	
	
	
}
