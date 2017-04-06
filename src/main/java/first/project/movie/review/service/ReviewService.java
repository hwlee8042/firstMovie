package first.project.movie.review.service;

import java.util.List;

import first.project.movie.review.model.ReviewVO;

public interface ReviewService {
	public void regist(ReviewVO vo)throws Exception;
	
	public void modify(ReviewVO vo)throws Exception;
	
	public void remove(int rno)throws Exception;
	
	public List<ReviewVO> list(int movie_number)throws Exception;
}
