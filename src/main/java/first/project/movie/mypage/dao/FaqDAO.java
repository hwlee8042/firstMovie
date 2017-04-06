package first.project.movie.mypage.dao;

import java.util.List;

import first.project.movie.mypage.model.FaqVO;

public interface FaqDAO {
	//�۾��� (faq���)
	public int insertFaq(FaqVO faqVO);
	//Faq List�������
	List<FaqVO> custom_list() throws Exception;
	//�� �󼼺���
	public FaqVO get_faq(Integer num) throws Exception;
	//�� �����ϱ�
	public void update_faq(FaqVO faqVO)throws Exception;
	//�� �����ϱ�
	public void delete_faq(Integer num)throws Exception;
	
}
