package first.project.movie.news.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import first.project.movie.news.dao.NewsDAO;
import first.project.movie.news.model.NewsVO;

@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDAO newsDAO;
	
	public void setNewsDAO(NewsDAO newsDAO){
		this.newsDAO = newsDAO;
	}
	
	@Override
	public void regist(NewsVO newsVO) throws Exception {
		newsDAO.create(newsVO);
	}
	@Override
	public NewsVO read(int no) throws Exception {
		newsDAO.hit(no);
		return newsDAO.read(no);
	}

	@Override
	public void modify(NewsVO newsVO) throws Exception {
		newsDAO.update(newsVO);
	}

	@Override
	public void remove(int no) throws Exception {
		newsDAO.delete(no);
	}

	@Override
	public List<NewsVO> manager_List() throws Exception {
		return newsDAO.manager_list();
	}

	@Override
	public List<NewsVO> member_List() throws Exception {
		return newsDAO.member_list();
	}
}
