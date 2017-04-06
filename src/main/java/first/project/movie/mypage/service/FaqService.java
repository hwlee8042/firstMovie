package first.project.movie.mypage.service;

import java.util.List;

import first.project.movie.mypage.model.FaqVO;

public interface FaqService {
	//�� ����(���)
	public String insertFaq(FaqVO faqVO);
	//list�ҷ�����
	List<FaqVO> custom_list() throws Exception;
	//�ۺ���
	public FaqVO get_faq(Integer num) throws Exception;
	//�� �����ϱ�
	public void update_faq(FaqVO faqVO) throws Exception;
	//�� �����ϱ�
	public void delete_faq(Integer num) throws Exception;
}
