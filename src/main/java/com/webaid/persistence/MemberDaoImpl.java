package com.webaid.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.MemberVO;
import com.webaid.domain.SearchCriteria;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	private static final String namespace="com.webaid.mappers.MemberMapper";
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<MemberVO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public MemberVO selectOne(String id) {
		return session.selectOne(namespace+".selectOne", id);
	}
	
	@Override
	public MemberVO selectByMail(String mail) {
		return session.selectOne(namespace+".selectByMail",mail);
	}

	@Override
	public void insert(MemberVO vo) {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(MemberVO vo) {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(String id) {
		session.delete(namespace+".delete",id);
		
	}

	@Override
	public List<MemberVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace+".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+".listSearchCount", cri);
	}

	

}
