package first.project.movie.movieinfo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import first.project.movie.movieinfo.model.MovieVO;

@Repository
public class MovieDAOImpl implements MovieDAO {	
		
	private static final String namespace = "first.project.movie.movieinfo.dao.MovieDAO";
		
	private SqlSessionTemplate sqlSession;

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}	
	
	@Override
	public int insertMovie(MovieVO movieVO) {	
		
		return sqlSession.insert(namespace + ".insertMovie", movieVO);
		
	}

	
}
