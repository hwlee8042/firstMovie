package first.project.movie.member.service;

import java.util.Date;
import java.util.Map;

import first.project.movie.member.model.MemberVO;

public interface MemberService {
	
	MemberVO selectMember(String id);//로그인 , 회원정보 가져오기

	public String insertMember(String member_id, String member_pw, String member_name, String member_gender, Date member_birth,
			 String member_phone, String member_email);
	
	String memberCheck(String member_id);
	
	public void memberDelete(MemberVO vo);//회원 탈퇴
	
	void memberUpdate(Map<String, Object> update); //정보수정
	
	public void joinCheck(String id);// 가입 승인
}
