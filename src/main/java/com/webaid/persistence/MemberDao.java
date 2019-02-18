package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.MemberVO;
import com.webaid.domain.SearchCriteria;

public interface MemberDao {
	public List<MemberVO> selectAll();
	public MemberVO selectOne(String id);
	public MemberVO selectByMail(String mail);
	public void insert(MemberVO vo);
	public void update(MemberVO vo);
	public void delete(String id);
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
