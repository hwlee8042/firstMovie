package first.project.movie.member.service;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import first.project.movie.member.dao.MemberDAO;
import first.project.movie.member.model.MemberVO;
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	@Override
	public MemberVO selectMember(String id) {
		// TODO Auto-generated method stub
		MemberVO vo = this.memberDAO.selectMember(id);
		return vo;
	}

	@Override
	public String insertMember(String member_id, String member_pw, String member_name, String member_gender,
			 Date member_birth, String member_phone, String member_email) {
		int result = memberDAO.memberInsert(member_id, member_pw, member_name, member_gender, member_birth,
				member_phone, member_email);

		if (result > 0)
			return "100";
		return "-1";
	}

	@Override
	public String memberCheck(String member_id) {
		return memberDAO.memberCheck(member_id);
	}
	//È¸¿øÅ»Åð
	@Override
	public void memberDelete(MemberVO vo) {
		// TODO Auto-generated method stub
		this.memberDAO.memberDelete(vo);		
	}
	
	//Á¤º¸¼öÁ¤
	@Override
	public void memberUpdate(Map<String, Object> update) {
		// TODO Auto-generated method stub
		memberDAO.memberUpdate(update);
	}

	@Override
	public void joinCheck(String id) {
		// TODO Auto-generated method stub
		this.memberDAO.joinCheck(id);
	}

	
}
