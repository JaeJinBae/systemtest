package com.webaid.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webaid.domain.AdviceVO;
import com.webaid.domain.SearchCriteria;
import com.webaid.persistence.AdviceDao;

@Service
public class AdviceServiceImpl implements AdviceService{

	@Autowired
	private AdviceDao dao;
	

	@Override
	public List<AdviceVO> selectAll() {
		return dao.selectAll();
	}

	@Override
	public AdviceVO selectOne(int bno) {
		dao.updateCnt(bno);
		return dao.selectOne(bno);
	}

	@Override
	public void insert(AdviceVO vo) {
		dao.insert(vo);
	}

	@Override
	public void update(AdviceVO vo) {
		dao.update(vo);
	}
	
	@Override
	public void updateCnt(int bno) {
		dao.updateCnt(bno);
	}
	
	@Override
	public void updateStateWait(int bno) {
		dao.updateStateWait(bno);
	}

	@Override
	public void delete(int bno) {
		dao.delete(bno);
	}

	@Override
	public List<AdviceVO> listSearch(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}
	
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

}
