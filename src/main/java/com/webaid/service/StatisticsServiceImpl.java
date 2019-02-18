package com.webaid.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.StatisticsVO;
import com.webaid.persistence.StatisticsDao;

@Service
public class StatisticsServiceImpl implements StatisticsService {
	
	@Autowired
	private StatisticsDao dao;
	
	@Override
	public void insert(StatisticsVO vo) {
		dao.insert(vo);
	}

	@Override
	public int total() {
		return dao.total();
	}

	@Override
	public int selectCount(String keyword) {
		return dao.selectCount(keyword);
	}

	@Override
	public List<StatisticsVO> selectByDate(SearchCriteria cri) {
		return dao.selectByDate(cri);
	}

	@Override
	public int selectByBrowser(String keyword, String browser) {
		return dao.selectByBrowser(keyword, browser);
	}

	@Override
	public int selectByDevice(String keyword, String device) {
		return dao.selectByDevice(keyword, device);
	}

}
