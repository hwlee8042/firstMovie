package first.project.movie.movieinfo.service;

import first.project.movie.movieinfo.dao.MovieDAO;
import first.project.movie.movieinfo.model.MovieVO;

public class MovieServiceImpl implements MovieService {		
		
	private MovieDAO movieDAO;
	
	public void setMovieDAO(MovieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}
	
	@Override
	public String insertMovie(MovieVO movieVO) {		

		int result = movieDAO.insertMovie(movieVO);
		
		if (result > 0)
			return "100";
		return "-1";
	}
	
}
