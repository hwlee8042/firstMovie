package first.project.movie.mypage.dao;

import java.util.List;

import first.project.movie.mypage.model.FaqVO;

public interface FaqDAO {
	//글쓰기 (faq등록)
	public int insertFaq(FaqVO faqVO);
	//Faq List갖고오기
	List<FaqVO> custom_list() throws Exception;
	//글 상세보기
	public FaqVO get_faq(Integer num) throws Exception;
	//글 수정하기
	public void update_faq(FaqVO faqVO)throws Exception;
	//글 삭제하기
	public void delete_faq(Integer num)throws Exception;
	
}
