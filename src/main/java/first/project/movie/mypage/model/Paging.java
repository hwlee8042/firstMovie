package first.project.movie.mypage.model;

public class Paging {
	private Integer w_size; //페이지당 보여줄 글 수
	private Integer p_size; //페이지번호 표시 수
	private Integer writing_Count; //전체 글수
	private Integer cur_Page; //현재 페이지
	
	public Paging(){
		super();
	}
	
	// Paging(한 화면에 보여질 글 수, 페이지 분할 수, 총 글의 갯수, 현재 보고 있는 페이지 번호); 
	public void setPaging(Integer w_size, Integer p_size, Integer writing_Count, Integer cur_Page){
		this.w_size = w_size;
		this.p_size = p_size;
		this.writing_Count = writing_Count;
		this.cur_Page = cur_Page;
	}
	
	//총 페이지수
	public Integer getPage_Count(){
		return (writing_Count / w_size) + (writing_Count % w_size > 0 ? 1 : 0);
	}
	
	//페이지 시작 수
	public Integer getPage_Start(){
		return ((cur_Page - 1) / p_size) * p_size + 1;
	}
	
	//페이지 마지막 수 
	public Integer getPage_End(){
		return Math.min(getPage_Start() + p_size -1 , getPage_Count());
	}
	
	//Pre 표시 여부
	public boolean isPre(){
		return getPage_Start() != 1;
	}
	
	//Next표시 여부
	public boolean isNext(){
		return getPage_End() < getPage_Count();
	}
	
	//글 범위 시작 번호
	public Integer getWriting_Start(){
		return getWriting_End() - w_size + 1;
	}
	
	//글 범위 끝 번호
	public Integer getWriting_End(){
		return cur_Page * w_size;
	}
	
	///get, set
	public Integer getW_size() {
		return w_size;
	}

	public void setW_size(Integer w_size) {
		this.w_size = w_size;
	}

	public Integer getP_size() {
		return p_size;
	}

	public void setP_size(Integer p_size) {
		this.p_size = p_size;
	}

	public Integer getWriting_Count() {
		return writing_Count;
	}

	public void setWriting_Count(Integer writing_Count) {
		this.writing_Count = writing_Count;
	}

	public Integer getCur_Page() {
		return cur_Page;
	}

	public void setCur_Page(Integer cur_Page) {
		this.cur_Page = cur_Page;
	}
}
