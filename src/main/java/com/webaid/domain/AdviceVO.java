package com.webaid.domain;

import java.util.Date;

public class AdviceVO {
	private int bno;
	private String writer;
	private String title;
	private String content;
	private String pwtype;
	private String pw;
	private String state;
	private int cnt;
	private Date regdate;
	private int replycnt;

	public AdviceVO() {
		super();
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPwtype() {
		return pwtype;
	}

	public void setPwtype(String pwtype) {
		this.pwtype = pwtype;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getReplycnt() {
		return replycnt;
	}

	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}

	@Override
	public String toString() {
		return "AdviceVO [bno=" + bno + ", writer=" + writer + ", title=" + title + ", content=" + content + ", pwtype="
				+ pwtype + ", pw=" + pw + ", cnt=" + cnt + ", regdate=" + regdate + ", replycnt=" + replycnt + "]";
	}

}
