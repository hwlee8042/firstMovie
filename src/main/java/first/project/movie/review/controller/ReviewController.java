package first.project.movie.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import first.project.movie.review.model.ReviewVO;
import first.project.movie.review.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	public void setReviewService(ReviewService reviewService){
		this.reviewService = reviewService;
	}

	@RequestMapping(value = "review.do", method = RequestMethod.GET)
	public ModelAndView getList(@RequestParam int movie_number)throws Exception {
		ModelAndView mav = new ModelAndView();
		List<ReviewVO> list = reviewService.list(movie_number);
		mav.addObject("list", list);
		mav.setViewName("review");		
		return mav;
	}
	
	@RequestMapping(value = "review.do", method = RequestMethod.POST)
	public ModelAndView postRegist(@RequestParam int movie_number, ReviewVO vo ,HttpServletRequest request) throws Exception {
		vo.setScore(Integer.parseInt(request.getParameter("score")));
		vo.setMovie_number(movie_number);
		reviewService.regist(vo);
		return new ModelAndView("redirect:/review.do?movie_number="+vo.getMovie_number());
	}

}
