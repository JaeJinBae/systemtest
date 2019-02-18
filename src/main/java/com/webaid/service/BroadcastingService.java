package com.webaid.service;

import java.util.List;

import com.webaid.domain.BroadcastingVO;
import com.webaid.domain.SearchCriteria;

public interface BroadcastingService {
	public List<BroadcastingVO> selectAll();
	public BroadcastingVO selectOne(int bno);
	public void insert(BroadcastingVO vo);
	public void update(BroadcastingVO vo);
	public void updateCnt(int bno);
	public void delete(int bno);
	public List<BroadcastingVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
