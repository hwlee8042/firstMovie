package first.project.movie.news.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import first.project.movie.news.model.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {
	
	private static final String namespace = "first.project.movie.news.dao.NewsDAO";

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void create(NewsVO vo) throws Exception {
		sqlSession.insert(namespace+".create", vo);
	}
	
	@Override
	public NewsVO read(int no) throws Exception {
		return sqlSession.selectOne(namespace+".read", no);
	}
	
	@Override
	public void hit(int no)throws Exception{
		sqlSession.update(namespace+".hit", no);
	}
	
	@Override
	public void update(NewsVO vo) throws Exception {
		sqlSession.update(namespace+".update", vo);
	}

	@Override
	public void delete(int no) throws Exception {
		sqlSession.delete(namespace+".delete", no);
	}

	@Override
	public List<NewsVO> manager_list() throws Exception {
		return sqlSession.selectList(namespace+".manager_List");
	}

	@Override
	public List<NewsVO> member_list() throws Exception {
		return sqlSession.selectList(namespace+".manager_List");
	}
}
