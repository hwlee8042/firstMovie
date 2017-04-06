package first.project.movie.mypage.model;

public class Paging {
	private Integer w_size; //�������� ������ �� ��
	private Integer p_size; //��������ȣ ǥ�� ��
	private Integer writing_Count; //��ü �ۼ�
	private Integer cur_Page; //���� ������
	
	public Paging(){
		super();
	}
	
	// Paging(�� ȭ�鿡 ������ �� ��, ������ ���� ��, �� ���� ����, ���� ���� �ִ� ������ ��ȣ); 
	public void setPaging(Integer w_size, Integer p_size, Integer writing_Count, Integer cur_Page){
		this.w_size = w_size;
		this.p_size = p_size;
		this.writing_Count = writing_Count;
		this.cur_Page = cur_Page;
	}
	
	//�� ��������
	public Integer getPage_Count(){
		return (writing_Count / w_size) + (writing_Count % w_size > 0 ? 1 : 0);
	}
	
	//������ ���� ��
	public Integer getPage_Start(){
		return ((cur_Page - 1) / p_size) * p_size + 1;
	}
	
	//������ ������ �� 
	public Integer getPage_End(){
		return Math.min(getPage_Start() + p_size -1 , getPage_Count());
	}
	
	//Pre ǥ�� ����
	public boolean isPre(){
		return getPage_Start() != 1;
	}
	
	//Nextǥ�� ����
	public boolean isNext(){
		return getPage_End() < getPage_Count();
	}
	
	//�� ���� ���� ��ȣ
	public Integer getWriting_Start(){
		return getWriting_End() - w_size + 1;
	}
	
	//�� ���� �� ��ȣ
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
