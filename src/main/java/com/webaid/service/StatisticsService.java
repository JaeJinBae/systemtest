package com.webaid.service;

import java.util.List;

import com.webaid.domain.SearchCriteria;
import com.webaid.domain.StatisticsVO;

public interface StatisticsService {
	public void insert(StatisticsVO vo);
	public int total();
	public int selectCount(String keyword);
	public List<StatisticsVO> selectByDate(SearchCriteria cri);
	public int selectByBrowser(String keyword,String browser);
	public int selectByDevice(String keyword,String device);
}
