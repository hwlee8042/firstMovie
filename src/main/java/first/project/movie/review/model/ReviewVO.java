package first.project.movie.review.model;

import java.sql.Date;

public class ReviewVO {	
	private int rno;
	private int movie_number;
	private String rid;
	private String rcomment;
	private int score;
	private int status;
	private Date regdate;
	private Date insdate;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getMovie_number() {
		return movie_number;
	}
	public void setMovie_number(int movie_number) {
		this.movie_number = movie_number;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRcomment() {
		return rcomment;
	}
	public void setRcomment(String rcomment) {
		this.rcomment = rcomment;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getInsdate() {
		return insdate;
	}
	public void setInsdate(Date insdate) {
		this.insdate = insdate;
	}	
	
}
