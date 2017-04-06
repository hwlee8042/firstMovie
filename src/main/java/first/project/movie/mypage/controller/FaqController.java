package first.project.movie.mypage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import first.project.movie.mypage.model.FaqVO;
import first.project.movie.mypage.service.FaqService;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqService;

	public void setFaqService(FaqService faqService) {
		this.faqService = faqService;
	}

	//mypageȭ�� GO! > ���߿� ����
	@RequestMapping(value="mypage.do")
	public String mypageGo(){
		return "redirect:/faq.do";
	}

	//�۾��� ������ GO!!
	@RequestMapping(value="writemypage.do")
	public String faqWrite(){
		return "write-mypage";
	}

	//�Խ��� �� ���
	@RequestMapping(value="writeSubmit.do", method=RequestMethod.POST)
	public ModelAndView writeSubmit(HttpServletRequest request, FaqVO faqVO) throws Exception {

		//Login����
		HttpSession session = request.getSession();
		String id = session.getId();
		faqVO.setFaq_id(id);

		//��¥Form���
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		faqVO.setFaq_regdate(new Date());

		//���񽺿� VO����
		faqService.insertFaq(faqVO);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/faq.do");
		return mav;
	}


	//qna�Խ��ǿ� List�ҷ�����
	@RequestMapping(value="faq.do", method=RequestMethod.GET)
	public ModelAndView faq_list(HttpServletRequest request)throws Exception{
		System.out.println("FAQ����Ʈ");
		ModelAndView mav = new ModelAndView();
		List<FaqVO> list = faqService.custom_list();//list�� 1�̶�� �� �Ѱ��ֱ�.
		mav.addObject("list", list);
		mav.setViewName("qnamypage");
		return mav;
	}
	//�� �󼼺���
	@RequestMapping(value="qna-read.do", method = RequestMethod.GET)
	public ModelAndView get_faq(@RequestParam("num") Integer num, HttpServletRequest request)throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject(faqService.get_faq(num));
		mav.setViewName("qna-read");
		return mav;
	}

	//qna�Խ��� list�����ϱ�
	@RequestMapping(value="qna-delete.do", method=RequestMethod.POST)
	public ModelAndView delete_faq(@RequestParam("num") Integer num)throws Exception{
		System.out.println(num);
		faqService.delete_faq(num);
		System.out.println("qna ���� : delete_faq");
		return new ModelAndView("redirect:/faq.do");
	}


	//qna �Խ��� ���� ����ȭ�� �� �ҷ�����
	@RequestMapping(value="qna-modify.do", method=RequestMethod.GET)
	public ModelAndView get_faq(@RequestParam("num") Integer num)throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject(faqService.get_faq(num));
		System.out.println(" qna ���� : get_faq");
		mav.setViewName("qna-modify");
		return mav;
	}
	//qna list���� submit
	@RequestMapping(value="qna-modify.do", method=RequestMethod.POST)
	public ModelAndView update_faq(FaqVO faqVO, HttpServletRequest request)throws Exception{
		faqService.update_faq(faqVO);
		System.out.println("������ qnamypage ����Ʈ���� : qna-modify");
		return new ModelAndView("redirect:/faq.do");
	}

	//pagingó��






}
