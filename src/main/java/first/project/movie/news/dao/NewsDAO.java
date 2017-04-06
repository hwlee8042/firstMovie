package first.project.movie.news.dao;

import java.util.List;

import first.project.movie.news.model.NewsVO;

public interface NewsDAO {
	public void create(NewsVO vo)throws Exception;
	public NewsVO read(int no)throws Exception;
	public void hit(int no)throws Exception;
	public void update(NewsVO vo)throws Exception;
	public void delete(int no)throws Exception;
	public List<NewsVO> manager_list()throws Exception;
	public List<NewsVO> member_list()throws Exception;
}
