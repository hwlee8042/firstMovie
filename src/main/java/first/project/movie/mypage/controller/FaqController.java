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

	//mypage화면 GO! > 나중에 수정
	@RequestMapping(value="mypage.do")
	public String mypageGo(){
		return "redirect:/faq.do";
	}

	//글쓰기 페이지 GO!!
	@RequestMapping(value="writemypage.do")
	public String faqWrite(){
		return "write-mypage";
	}

	//게시판 글 등록
	@RequestMapping(value="writeSubmit.do", method=RequestMethod.POST)
	public ModelAndView writeSubmit(HttpServletRequest request, FaqVO faqVO) throws Exception {

		//Login여부
		HttpSession session = request.getSession();
		String id = session.getId();
		faqVO.setFaq_id(id);

		//날짜Form등록
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(new Date());
		faqVO.setFaq_regdate(new Date());

		//서비스에 VO주입
		faqService.insertFaq(faqVO);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/faq.do");
		return mav;
	}


	//qna게시판에 List불러오기
	@RequestMapping(value="faq.do", method=RequestMethod.GET)
	public ModelAndView faq_list(HttpServletRequest request)throws Exception{
		System.out.println("FAQ리스트");
		ModelAndView mav = new ModelAndView();
		List<FaqVO> list = faqService.custom_list();//list에 1이라는 값 넘겨주기.
		mav.addObject("list", list);
		mav.setViewName("qnamypage");
		return mav;
	}
	//글 상세보기
	@RequestMapping(value="qna-read.do", method = RequestMethod.GET)
	public ModelAndView get_faq(@RequestParam("num") Integer num, HttpServletRequest request)throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject(faqService.get_faq(num));
		mav.setViewName("qna-read");
		return mav;
	}

	//qna게시판 list삭제하기
	@RequestMapping(value="qna-delete.do", method=RequestMethod.POST)
	public ModelAndView delete_faq(@RequestParam("num") Integer num)throws Exception{
		System.out.println(num);
		faqService.delete_faq(num);
		System.out.println("qna 삭제 : delete_faq");
		return new ModelAndView("redirect:/faq.do");
	}


	//qna 게시판 내용 수정화면 값 불러오기
	@RequestMapping(value="qna-modify.do", method=RequestMethod.GET)
	public ModelAndView get_faq(@RequestParam("num") Integer num)throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.addObject(faqService.get_faq(num));
		System.out.println(" qna 수정 : get_faq");
		mav.setViewName("qna-modify");
		return mav;
	}
	//qna list수정 submit
	@RequestMapping(value="qna-modify.do", method=RequestMethod.POST)
	public ModelAndView update_faq(FaqVO faqVO, HttpServletRequest request)throws Exception{
		faqService.update_faq(faqVO);
		System.out.println("수정후 qnamypage 리스트띠우기 : qna-modify");
		return new ModelAndView("redirect:/faq.do");
	}

	//paging처리






}
