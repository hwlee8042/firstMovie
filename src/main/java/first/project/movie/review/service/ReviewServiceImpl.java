package first.project.movie.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import first.project.movie.review.dao.ReviewDAO;
import first.project.movie.review.model.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	public void setReviewDAO(ReviewDAO reviewDAO){
		this.reviewDAO = reviewDAO;
	}
	
	@Override
	public void regist(ReviewVO vo) throws Exception {
		System.out.println(vo.getRcomment() + "service");
		reviewDAO.create(vo);
	}

	@Override
	public void modify(ReviewVO vo) throws Exception {
		reviewDAO.update(vo);

	}

	@Override
	public void remove(int rno) throws Exception {
		reviewDAO.delete(rno);

	}

	@Override
	public List<ReviewVO> list(int movie_number) throws Exception {
		return reviewDAO.list(movie_number);
	}

}
