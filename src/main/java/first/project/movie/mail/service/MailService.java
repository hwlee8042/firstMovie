package first.project.movie.mail.service;

//Interface
public interface MailService {

	/**
	 * ���� ����
	 * 
	 * @param subject
	 *            ����
	 * @param text
	 *            ����
	 * @param from
	 *            ������ ���� �ּ�
	 * @param to
	 *            �޴� ���� �ּ�
	 * 
	 **/
	public boolean send(String subject, String id, String from, String to);

}
