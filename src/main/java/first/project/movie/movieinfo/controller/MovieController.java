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
			System.out.println("�������� ���� ����!!");
		}
		System.out.println("��ȭ���ȭ��  : MovieController");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("manager_movie_add");
		return modelAndView;
	}

	//��ȭ���
	@RequestMapping(value = "movie_add.mdo", method = RequestMethod.POST)
	public ModelAndView RegMovie(MultipartHttpServletRequest request, MovieVO movieVO) throws Exception {
		
		//������ �̹��� ���ε�
		Map<String, MultipartFile> files = request.getFileMap();
	    CommonsMultipartFile cmf = (CommonsMultipartFile)files.get("movie_poster");
	    String path ="c:/test/"+cmf.getOriginalFilename();
	    File f = new File(path);
	    if(!f.isDirectory()){
	    	f.mkdirs();
	    }
	    cmf.transferTo(f);
	    
	    String p_name = f.getName(); //������ ���� �̸�
	    String p_path = f.getPath(); //������ ������ ���ε�� ���
	    movieVO.setPoster_name(p_name);	    
	    movieVO.setPoster_path(p_path);	    
            
		//���񽺿� VO����
		movieService.insertMovie(movieVO);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager_movie_list");
		return mav;
	}
	
	//��ȭ����
	@RequestMapping(value = "movie_del.mdo")
	public ModelAndView insMovie(MultipartHttpServletRequest request, MovieVO movieVO) throws Exception {
		
				
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager_movie_list");
		return mav;
	}
}
