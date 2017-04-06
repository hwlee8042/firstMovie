package first.project.movie.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import first.project.movie.mypage.dao.FaqDAO;
import first.project.movie.mypage.model.FaqVO;


@Service
public class FaqServiceImpl implements FaqService {
	
	private FaqDAO faqDAO;
	
	public void setFaqDAO(FaqDAO faqDAO) {
		this.faqDAO = faqDAO;
	}

	@Override
	public String insertFaq(FaqVO faqVO) {
		int result = faqDAO.insertFaq(faqVO);
		
		if(result > 0)
			return "100";
		else
			return "-1";
	}
	
	@Override
	public List<FaqVO> custom_list() throws Exception{
		return faqDAO.custom_list();
	}
	
	@Override
	public FaqVO get_faq(Integer num) throws Exception{
		return faqDAO.get_faq(num);
	}
	
	@Override
	public void update_faq(FaqVO faqVO) throws Exception{
		faqDAO.update_faq(faqVO);
	}
	
	@Override
	public void delete_faq(Integer num) throws Exception{
		faqDAO.delete_faq(num);
	}
	
}
