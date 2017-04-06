package first.project.movie.mail.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import first.project.movie.mail.service.MailService;

@Controller
public class MailController {
	@Autowired
	private MailService mailService;

	public void setMailService(MailService mailService) {
		this.mailService = mailService;
	}

	// ȸ������ �̸��� ����
	@RequestMapping(value = "check.do", method = RequestMethod.POST, produces = "application/json")
	public String sendMailAuth(HttpSession session, @RequestParam String id ,@RequestParam String email) {
		String subject = "ȸ������ ���� �ڵ� �߱� �ȳ� �Դϴ�.";
		System.out.println(id);
		mailService.send(subject, id, "dandiee94@gmail.com", email);
		return "main";

	}

	@RequestMapping(value = "test1.do")
	public String testpage() {
		return "mailtest";
	}
}