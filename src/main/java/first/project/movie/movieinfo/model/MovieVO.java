package first.project.movie.movieinfo.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MovieVO {	
	private String movie_name;	//����
	private String movie_genre;	//�帣
	private String movie_reldate;	//������
	private String movie_showtime;	//�󿵽ð�
	private String movie_director;	//����
	private String movie_actor;	//���
	private String movie_story;	//�ٰŸ�
	private String movie_rating;	//���
	private String movie_running;	//�󿵱Ⱓ	
	private int movie_score;	//����
	private int movie_status;	//����
	private Date movie_regdate;	//�����	
	private String movie_url1;	//Ƽ�������ּ�1
	private String movie_url2;	//Ƽ�������ּ�2
	private String movie_url3;	//Ƽ�������ּ�3
	private String movie_site;	//���Ļ���Ʈ�ּ�
	private MultipartFile movie_poster; //������ �̹���
	private String poster_name; //������ ���� �̸�
	private String poster_path; //������ ���� ���	
	private Date movie_exit; //��������
	private MultipartFile[] s_photo; //��ƿ�� �̹���
	private String sphoto_name; //��ƿ�� ���� �̸�
	private String sphoto_path; //��ƿ�� ���� ���

	
	public MovieVO(){}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}

	public String getMovie_reldate() {
		return movie_reldate;
	}

	public void setMovie_reldate(String movie_reldate) {		
		this.movie_reldate = movie_reldate;
	}	
	
	public String getMovie_showtime() {
		return movie_showtime;
	}

	public void setMovie_showtime(String movie_showtime) {
		this.movie_showtime = movie_showtime;
	}
	
	public String getMovie_director() {
		return movie_director;
	}

	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}

	public String getMovie_actor() {
		return movie_actor;
	}

	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}

	public String getMovie_story() {
		return movie_story;
	}

	public void setMovie_story(String movie_story) {
		this.movie_story = movie_story;
	}

	public String getMovie_rating() {
		return movie_rating;
	}

	public void setMovie_rating(String movie_rating) {
		this.movie_rating = movie_rating;
	}

	public String getMovie_running() {
		return movie_running;
	}

	public void setMovie_running(String movie_running) {
		this.movie_running = movie_running;
	}

	public int getMovie_score() {
		return movie_score;
	}

	public void setMovie_score(int movie_score) {
		this.movie_score = movie_score;
	}

	public int getMovie_status() {
		return movie_status;
	}

	public void setMovie_status(int movie_status) {
		this.movie_status = movie_status;
	}

	public Date getMovie_regdate() {
		return movie_regdate;
	}

	public void setMovie_regdate(Date movie_regdate) {
		this.movie_regdate = movie_regdate;
	}

	public String getMovie_url1() {
		return movie_url1;
	}

	public void setMovie_url1(String movie_url1) {
		this.movie_url1 = movie_url1;
	}

	public String getMovie_url2() {
		return movie_url2;
	}

	public void setMovie_url2(String movie_url2) {
		this.movie_url2 = movie_url2;
	}

	public String getMovie_url3() {
		return movie_url3;
	}

	public void setMovie_url3(String movie_url3) {
		this.movie_url3 = movie_url3;
	}

	public String getMovie_site() {
		return movie_site;
	}

	public void setMovie_site(String movie_site) {
		this.movie_site = movie_site;
	}

	public MultipartFile getMovie_poster() {
		return movie_poster;
	}

	public void setMovie_poster(MultipartFile movie_poster) {
		this.movie_poster = movie_poster;
	}

	public String getPoster_path() {
		return poster_path;
	}

	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}

	public Date getMovie_exit() {
		return movie_exit;
	}

	public void setMovie_exit(Date movie_exit) {
		this.movie_exit = movie_exit;
	}

	public String getPoster_name() {
		return poster_name;
	}

	public void setPoster_name(String poster_name) {
		this.poster_name = poster_name;
	}	

	public MultipartFile[] getS_photo() {
		return s_photo;
	}

	public void setS_photo(MultipartFile[] s_photo) {
		this.s_photo = s_photo;
	}

	public String getSphoto_name() {
		return sphoto_name;
	}

	public void setSphoto_name(String sphoto_name) {
		this.sphoto_name = sphoto_name;
	}

	public String getSphoto_path() {
		return sphoto_path;
	}

	public void setSphoto_path(String sphoto_path) {
		this.sphoto_path = sphoto_path;
	}
	
	
}