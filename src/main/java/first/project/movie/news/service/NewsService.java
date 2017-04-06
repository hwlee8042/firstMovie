package first.project.movie.news.service;

import java.util.List;

import first.project.movie.news.model.NewsVO;

public interface NewsService {

	public void regist(NewsVO newsVO)throws Exception;
	
	public NewsVO read(int no)throws Exception;

	public void modify(NewsVO newsVO)throws Exception;
	
	public void remove(int no)throws Exception;

	public List<NewsVO> manager_List()throws Exception;

	public List<NewsVO> member_List()throws Exception;
}
