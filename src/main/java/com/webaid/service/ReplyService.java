package com.webaid.service;

import com.webaid.domain.ReplyVO;

public interface ReplyService {
	public ReplyVO select(int bno) throws Exception;
	public void insert(ReplyVO vo) throws Exception;
	public void update(ReplyVO vo) throws Exception;
	public void delete(int rno) throws Exception;
}
