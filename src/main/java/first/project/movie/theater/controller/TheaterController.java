package first.project.movie.theater.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TheaterController {
	
	@RequestMapping(value = "theater.do", method = RequestMethod.GET)
	public String theater(){
		return "theater_intro";
	}
	
	@RequestMapping(value = "theater2.do", method = RequestMethod.GET)
	public String theater2(){
		return "theater_intro2";
	}
	
	@RequestMapping(value = "theater3.do", method = RequestMethod.GET)
	public String theater3(){
		return "theater_intro3";
	}
}
