package first.project.movie.mypage.model;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class FaqVO {
	private String faq_id; /*작성자*/
	private int faq_num; /*글번호*/
	private String faq_category; /*글유형*/
	private String faq_sub; /*글 제목*/
	private String faq_content; /*글 내용*/
	private int faq_status; /*관리자: 글확인 여부*/
	private Date faq_regdate; /*등록일*/
	
	public FaqVO(){}

	public String getFaq_id() {
		return faq_id;
	}

	public void setFaq_id(String faq_id) {
		this.faq_id = faq_id;
	}

	public int getFaq_num() {
		return faq_num;
	}

	public void setFaq_num(int faq_num) {
		this.faq_num = faq_num;
	}

	public String getFaq_category() {
		return faq_category;
	}

	public void setFaq_category(String faq_category) {
		this.faq_category = faq_category;
	}

	public String getFaq_sub() {
		return faq_sub;
	}

	public void setFaq_sub(String faq_sub) {
		this.faq_sub = faq_sub;
	}

	public String getFaq_content() {
		return faq_content;
	}

	public void setFaq_content(String faq_content) {
		this.faq_content = faq_content;
	}

	public int getFaq_status() {
		return faq_status;
	}

	public void setFaq_status(int faq_status) {
		this.faq_status = faq_status;
	}

	public Date getFaq_regdate() {
		return faq_regdate;
	}

	public void setFaq_regdate(Date faq_regdate) {
		this.faq_regdate = faq_regdate;
	}

	
	
}
