package first.project.movie.review.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import first.project.movie.review.model.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	
	private static final String namespace = "first.project.movie.review.dao.ReviewDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void create(ReviewVO vo) throws Exception {
		System.out.println(vo.getRcomment() + "DAO");
		sqlSession.insert(namespace+".create", vo);
		
	}

	@Override
	public void update(ReviewVO vo) throws Exception {
		sqlSession.update(namespace+".update", vo);

	}

	@Override
	public void delete(int rno) throws Exception {
		sqlSession.delete(namespace+".delete", rno);

	}

	@Override
	public List<ReviewVO> list(int movie_number) throws Exception {
		return sqlSession.selectList(namespace+".list");
	}

}
