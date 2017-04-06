package first.project.movie.member.service;

import java.util.Date;
import java.util.Map;

import first.project.movie.member.model.MemberVO;

public interface MemberService {
	
	MemberVO selectMember(String id);//�α��� , ȸ������ ��������

	public String insertMember(String member_id, String member_pw, String member_name, String member_gender, Date member_birth,
			 String member_phone, String member_email);
	
	String memberCheck(String member_id);
	
	public void memberDelete(MemberVO vo);//ȸ�� Ż��
	
	void memberUpdate(Map<String, Object> update); //��������
	
	public void joinCheck(String id);// ���� ����
}
