package dto;

import java.sql.Date;

public class ReplyDTO {
   
   private String GuId;

   private int rno;
   private String content;
   private String writer;
   private Date regdate;
   private String memberId;
   public String getGuId() {
      return GuId;
   }
   public void setGuId(String guId) {
      GuId = guId;
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
   public String getWriter() {
      return writer;
   }
   public void setWriter(String writer) {
      this.writer = writer;
   }
   public Date getRegdate() {
      return regdate;
   }
   public void setRegdate(Date regdate) {
      this.regdate = regdate;
   }
   
   public String getMemberId() {
	return memberId;
}
public void setMemberId(String memberId) {
	this.memberId = memberId;
}
@Override
public String toString() {
	return "ReplyDTO [GuId=" + GuId + ", rno=" + rno + ", content=" + content + ", writer=" + writer + ", regdate="
			+ regdate + ", memberId=" + memberId + "]";
}

   }


   