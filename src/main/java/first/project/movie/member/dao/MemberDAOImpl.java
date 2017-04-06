package first.project.movie.member.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import first.project.movie.member.model.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	private static final String namespace = "first.project.movie.member.dao.MemberDAO";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void sqlSession(){}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public MemberVO selectMember(String id) {
		// TODO Auto-generated method stub
		MemberVO vo = sqlSession.selectOne(namespace + ".selectMember", id);
		return vo;
	}

	@Override
	public int memberInsert(String member_id, String member_pw, String member_name, String member_gender, Date member_birth,
			 String member_phone, String member_email) {
		Map<String, Object> temp = new HashMap<String, Object>();
		temp.put("id", member_id);
		temp.put("pw", member_pw);
		temp.put("name", member_name);
		temp.put("gender", member_gender);
		temp.put("birth", member_birth);
		temp.put("phone", member_phone);
		temp.put("email", member_email);
		
		return sqlSession.insert(namespace + ".memberInsert", temp);
	}
	
	@Override
	public String memberCheck(String member_id) {
		return sqlSession.selectOne(namespace + ".memberCheck", member_id);
	}
	//È¸¿ø Å»Åð
	@Override
	public void memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		
		sqlSession.delete(namespace + ".memberDelete", vo);
		
	}
	//Á¤º¸¼öÁ¤
	@Override
	public void memberUpdate(Map<String, Object> update) {
		// TODO Auto-generated method stub
		int result=sqlSession.update(namespace+".memberUpdate",update); 
	}

	@Override
	public void joinCheck(String id) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace+".joinCheck", id);
		
	}
}
