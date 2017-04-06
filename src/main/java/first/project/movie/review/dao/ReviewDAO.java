package first.project.movie.review.dao;

import java.util.List;

import first.project.movie.review.model.ReviewVO;

public interface ReviewDAO {
	
	public void create(ReviewVO vo)throws Exception;
	public void update(ReviewVO vo)throws Exception;
	public void delete(int rno)throws Exception;
	public List<ReviewVO> list(int movie_number)throws Exception;
}
