package first.project.movie.member.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import first.project.movie.member.model.MemberVO;
import first.project.movie.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	/// main화면 GO!
	@RequestMapping(value = "main.do")
	public String gohome() {
		return "main";
	}

	///signup화면 GO!
	@RequestMapping(value = "signup.do")
	public String regform() {
		return "signup";
	}
	
	/// ticketing화면 GO!
	@RequestMapping(value = "ticketing.do")
	public String ticketing() {
		return "ticketing";
	}
	
	// 로그아웃
	@RequestMapping(value = "logout.do")
	public String logout(HttpSession session) {
		session.invalidate();

		System.out.println("로그아웃 완료");
		return "redirect:main.do";
	}

	// 로그인	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public ModelAndView setView(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (session.getAttribute("LoginID") == null) {
			System.out.println("인증되지 않은 접근 !!");
		}
		System.out.println("로그인화면  : MemberController");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}

	// 정보 가져오기
	@RequestMapping(value = "modified.do", method = RequestMethod.GET)
	public ModelAndView get(HttpServletRequest request, HttpSession session) throws Exception {
		ModelAndView modelAndView = new ModelAndView();

		String member_id = (String) session.getAttribute("LoginID");
		System.out.println("정보를 가져올 ID : " + member_id);
		MemberVO memberVO = memberService.selectMember(member_id);

		Map<String, Object> info = new HashMap<String, Object>();
		info.put("member_id", member_id);
		info.put("member_pw", memberVO.getMember_pw());
		info.put("member_name", memberVO.getMember_name());
		info.put("member_gender", memberVO.getMember_gender());
		info.put("member_birth", memberVO.getMember_birth());
		info.put("member_phone1", memberVO.getMember_phone().substring(0, 3));
		info.put("member_phone2", memberVO.getMember_phone().substring(3, 7));
		info.put("member_phone3", memberVO.getMember_phone().substring(7, 11));
		info.put("member_email", memberVO.getMember_email());

		modelAndView.addAllObjects(info);
		modelAndView.setViewName("modifiedmypage");
		return modelAndView;

	}

	// 정보 업데이트
	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String updateInfo(HttpServletRequest request, HttpSession session) throws Exception {

		String member_id = (String) session.getAttribute("LoginID");
		Map<String, Object> update = new HashMap<String, Object>();
		update.put("member_id", member_id);
		update.put("member_pw", request.getParameter("pw"));
		update.put("member_phone", request.getParameter("member_phone1") + request.getParameter("member_phone2")
				+ request.getParameter("member_phone3"));
		update.put("member_email", request.getParameter("member_email"));
		memberService.memberUpdate(update);

		return "modifiedmypage";

	}

	// 로그인 처리
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public ModelAndView onSubmit(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		System.out.println("로그인 성공 여부 확인 및 메뉴 연결");

		String inputID = request.getParameter("id");
		String inputPW = request.getParameter("pw");
		System.out.println("input Info : " + inputID + "/" + inputPW);

		MemberVO memberVO = memberService.selectMember(inputID);
		String id = memberVO.getMember_id();
		String pw = memberVO.getMember_pw();
		int check = memberVO.getMember_check();
		String email = memberVO.getMember_email();

		System.out.println("Output Info : " + id + "/" + pw + "/" + check + "/" + email);

		ModelAndView modelAndView = new ModelAndView();
		Map<String, Object> model = new HashMap<String, Object>();

		if (check == 0) {
			session.invalidate();
			modelAndView.addObject("id", id);
			modelAndView.addObject("email", email);
			modelAndView.setViewName("mailcheck");
			return modelAndView;
		}

		if (check == 1) {
			if (inputPW.equals(pw)) {
				session.setAttribute("memberVO", memberVO);
				session.setAttribute("LoginID", memberVO.getMember_id());
				session.setAttribute("LoginPW", memberVO.getMember_pw());
				session.setAttribute("loginCheck", true);
				model.put("loginCheck", true);
				model.put("LoginID", memberVO.getMember_id());
				modelAndView.addObject("id", id);
				modelAndView.setViewName("redirect:main.do");

				System.out.println("Result : 로그인 성공 [" + memberVO.getMember_id() + "/" + memberVO.getMember_pw() + "/"
						+ session.getAttribute("memberVO"));
				System.out.println(session.getAttribute("LoginID") + "/" + session.getAttribute("loginCheck"));
			}
		} else {
			System.out.println("Result :  로그인 실패");
			model.put("loginCheck", false);
			modelAndView.setViewName("login");
		}
		if(check == 2){
			System.out.println("관리자 로그인");
			
		}
		modelAndView.addAllObjects(model);
		return modelAndView;
	}

	// 자동중복확인
	@RequestMapping("findId.do")
	@ResponseBody
	public String fine(HttpServletRequest request) {
		return memberService.memberCheck(request.getParameter("id"));
	}

	// 가입
	@RequestMapping("reg.do")
	public String reg(HttpServletRequest request, Model model) throws ParseException {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date member_birth = sdf.parse(
				request.getParameter("Year") + "-" + request.getParameter("month") + "-" + request.getParameter("day"));

		memberService.insertMember(request.getParameter("id"), request.getParameter("password"),
				request.getParameter("name"), request.getParameter("chk-gender"), member_birth,
				request.getParameter("TEL") + request.getParameter("tel1") + request.getParameter("tel2"),
				request.getParameter("email"));
		return "main";
	}

	// 회원 탈퇴 처리
	@RequestMapping("delete.do")
	public String Delete(HttpServletRequest request, HttpSession session, Model model, MemberVO memberVO)
			throws ParseException {

		String inputPW = request.getParameter("pw");
		System.out.println("입력한 비밀번호 : " + inputPW);

		String member_id = (String) session.getAttribute("LoginID");
		String member_pw = (String) session.getAttribute("LoginPW");
		System.out.println(member_id);
		System.out.println("세션이 갖고 있는 비밀번호:" + member_pw);

		if (inputPW.equals(member_pw)) {
			memberVO.setMember_id(member_id);
			memberVO.setMember_pw(member_pw);
			memberService.memberDelete(memberVO);
			session.invalidate();
		}
		System.out.println("회원탈퇴 완료");

		return "main";
	}

	// 메일인증
	@RequestMapping(value = "join.do")
	public String joincheck(HttpSession session, @RequestParam String id) {
		memberService.joinCheck(id);
		System.out.println(id);
		return "main";
	}

	// 페이지 이동만 
	@RequestMapping("detail.do")
	public String dtailInform() {
		return "detailinform";
	}

	@RequestMapping("event.do")
	public String event() {
		return "eventpage";
	}


	@RequestMapping(value = "modified.do")
	public String modified() {
		return "modifiedmypage";
	}

	// 여기 까지
	// 회원 탈퇴화면
	@RequestMapping(value = "del.do")
	public String delete(HttpServletRequest request, HttpSession session, Model model) {

		String member_id = (String) session.getAttribute("LoginID");

		model.addAttribute("id", member_id);
		return "deletemypage";
	}
}
