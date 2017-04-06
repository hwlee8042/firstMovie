package first.project.movie.movieinfo.controller;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import first.project.movie.movieinfo.model.MovieVO;
import first.project.movie.movieinfo.service.MovieService;

@Controller
public class MovieController {	
	
	private MovieService movieService;
	
	public void setMovieService(MovieService movieService) {
		this.movieService = movieService;
	}
	
	@RequestMapping(value ="movie_addpage.mdo")
	public String addpage() {
		return "manager_movie_add";
	}
	
	@RequestMapping(value ="movie_listpage.mdo")
	public String listpage() {
		return "manager_movie_list";
	}
	
	@RequestMapping(value ="movie_inspage.mdo")
	public String delpage() {
		return "manager_movie_ins";
	}
	
	
	@RequestMapping(value = "manager_movie_add.mdo", method = RequestMethod.GET)
	public ModelAndView add_View(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("ID") == null) {
			System.out.println("인증되지 않은 접근!!");
		}
		System.out.println("영화등록화면  : MovieController");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("manager_movie_add");
		return modelAndView;
	}

	//영화등록
	@RequestMapping(value = "movie_add.mdo", method = RequestMethod.POST)
	public ModelAndView RegMovie(MultipartHttpServletRequest request, MovieVO movieVO) throws Exception {
		
		//포스터 이미지 업로드
		Map<String, MultipartFile> files = request.getFileMap();
	    CommonsMultipartFile cmf = (CommonsMultipartFile)files.get("movie_poster");
	    String path ="c:/test/"+cmf.getOriginalFilename();
	    File f = new File(path);
	    if(!f.isDirectory()){
	    	f.mkdirs();
	    }
	    cmf.transferTo(f);
	    
	    String p_name = f.getName(); //포스터 파일 이름
	    String p_path = f.getPath(); //포스터 파일이 업로드된 경로
	    movieVO.setPoster_name(p_name);	    
	    movieVO.setPoster_path(p_path);	    
            
		//서비스에 VO주입
		movieService.insertMovie(movieVO);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager_movie_list");
		return mav;
	}
	
	//영화삭제
	@RequestMapping(value = "movie_del.mdo")
	public ModelAndView insMovie(MultipartHttpServletRequest request, MovieVO movieVO) throws Exception {
		
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager_movie_list");
		return mav;
	}
}
