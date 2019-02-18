package com.webaid.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.webaid.domain.ReplyVO;

@Repository
public class ReplyDaoImpl implements ReplyDao {

	private static final String namespace="com.webaid.mappers.ReplyMapper";
	
	@Autowired
	private SqlSession session;

	@Override
	public ReplyVO select(int bno) throws Exception {
		return session.selectOne(namespace+".select",bno);
	}

	@Override
	public void insert(ReplyVO vo) throws Exception {
		session.insert(namespace+".insert", vo);
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(int rno) throws Exception {
		session.delete(namespace+".delete", rno);
	}
	
	
}
