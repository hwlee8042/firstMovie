package first.project.movie.moviechart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieChartController {
	
	@RequestMapping(value="moviechart.do")
	public String movieChartGo(){
		return "moviechart";
	}
	

}
