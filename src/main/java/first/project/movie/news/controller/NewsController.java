package first.project.movie.news.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import first.project.movie.news.model.NewsVO;
import first.project.movie.news.service.NewsService;


@Controller
public class NewsController {

	@Autowired
	private NewsService newsService;

	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}

	@RequestMapping(value = "manager_page_add.mdo", method = RequestMethod.GET)
	public ModelAndView getRegist() {
		System.out.println("공지사항등록 : NewsController");
		return new ModelAndView("manager_page_add");
	}
	@RequestMapping(value = "manager_page_add.mdo", method = RequestMethod.POST)
	public ModelAndView postRegist(NewsVO newsVO) throws Exception {
		newsService.regist(newsVO);
		return new ModelAndView("redirect:/manager_page_list.mdo");
	}
	
	@RequestMapping(value = "manager_page_list.mdo", method = RequestMethod.GET)
	public ModelAndView managerList(HttpServletRequest request)throws Exception{
		System.out.println("공지사항리스트  : NewsController");
		ModelAndView mav = new ModelAndView();
		List<NewsVO> list = newsService.manager_List();
		mav.addObject("list", list);
		mav.setViewName("manager_page_list");
		return mav;
	}

	@RequestMapping(value = "manager_page_read.mdo", method = RequestMethod.GET)
	public ModelAndView managerRead(@RequestParam("no") int no) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject(newsService.read(no));
		System.out.println("공지사항 조회 : NewsController");
		mav.setViewName("manager_page_read");
		return mav;
	}

	@RequestMapping(value = "manager_page_delete.mdo", method = RequestMethod.POST)
	public ModelAndView delNews(@RequestParam("no") int no) throws Exception {
		System.out.println("공지사항 삭제 : NewsController");
		newsService.remove(no);
		return new ModelAndView("redirect:/manager_page_list.mdo");
	}
	@RequestMapping(value = "manager_page_modify.mdo", method = RequestMethod.GET)
	public ModelAndView getModify(@RequestParam("no") int no) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject(newsService.read(no));
		System.out.println("공지사항 수정 : NewsController");
		mav.setViewName("manager_page_modify");
		return mav;
	}
	@RequestMapping(value = "manager_page_modify.mdo", method = RequestMethod.POST)
	public ModelAndView postModify(NewsVO newsVO, HttpServletRequest request) throws Exception {
		
		newsService.modify(newsVO);
		System.out.println("공지사항 리스트 : NewsController");
		return new ModelAndView("redirect:/manager_page_list.mdo");
	}

	@RequestMapping(value = "news_list.do", method = RequestMethod.GET)
	public ModelAndView memberList(HttpServletRequest request)throws Exception{
		System.out.println("공지사항리스트  : NewsController");
		ModelAndView mav = new ModelAndView();
		List<NewsVO> list = newsService.manager_List();
		mav.addObject("list", list);
		mav.setViewName("news_list");
		return mav;
	}
	
	@RequestMapping(value = "news_read.do", method = RequestMethod.GET)
	public ModelAndView memberRead(@RequestParam("no") int no) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.addObject(newsService.read(no));
		System.out.println("공지사항 조회 : NewsController");
		mav.setViewName("news_read");
		return mav;
	}
}
