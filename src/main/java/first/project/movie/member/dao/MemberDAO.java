package first.project.movie.member.dao;

import java.util.Date;
import java.util.Map;

import first.project.movie.member.model.MemberVO;

public interface MemberDAO {
	MemberVO selectMember(String id);

	public int memberInsert(String member_id, String member_pw, String member_name, String member_gender, Date member_birth,
			 String member_phone, String member_email);

	public String memberCheck(String member_id);
	
	public void memberDelete(MemberVO vo); //È¸¿øÅ»Åð
	
	void memberUpdate(Map<String, Object> update); //Á¤º¸¼öÁ¤
	
	public void joinCheck(String id);// °¡ÀÔ ½ÂÀÎ
	 /*
	 * void memberUpdate(MemberVO memberVO);
	 * 
	 * String searchMember(String memeber_email);
	 * 
	 * void setPassword(String member_pw);
	 * 
	 * MemberVO memberView(String member_id);
	 * 
	 * 
	 */
}
