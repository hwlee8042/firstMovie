package first.project.movie.mypage.service;

import java.util.List;

import first.project.movie.mypage.model.FaqVO;

public interface FaqService {
	//글 쓰기(등록)
	public String insertFaq(FaqVO faqVO);
	//list불러오기
	List<FaqVO> custom_list() throws Exception;
	//글보기
	public FaqVO get_faq(Integer num) throws Exception;
	//글 수정하기
	public void update_faq(FaqVO faqVO) throws Exception;
	//글 삭제하기
	public void delete_faq(Integer num) throws Exception;
}
