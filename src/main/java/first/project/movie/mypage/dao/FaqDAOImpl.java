package first.project.movie.mypage.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import first.project.movie.mypage.model.FaqVO;

@Repository
public class FaqDAOImpl implements FaqDAO {
	
	private static final String namespace = "first.project.movie.mypage.dao.FaqDAO";
	
	private SqlSessionTemplate sqlSession;
	public void setSqlSession(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	
	@Override
	public int insertFaq(FaqVO faqVO) {
		return sqlSession.insert(namespace + ".insertFaq", faqVO);
	}
	
	@Override
	public List<FaqVO> custom_list() throws Exception{
		return sqlSession.selectList(namespace + ".custom_list");
	}
	
	@Override
	public FaqVO get_faq(Integer num) throws Exception{
		
		return sqlSession.selectOne(namespace + ".get_faq", num);
	}
	
	@Override
	public void update_faq(FaqVO faqVO)throws Exception{
		sqlSession.update(namespace + ".update_faq", faqVO);
	}
	
	@Override
	public void delete_faq(Integer num)throws Exception{
		sqlSession.delete(namespace + ".delete_faq", num);
	}
}
