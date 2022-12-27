package com.sample.vo;

import java.util.Date;

public class Review {
	
	private int no;
	private String writer;
	private String content;
	private Date createdDate;
	private int boardNo;
	
	public Review() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	@Override
	public String toString() {
		return "Review [no=" + no + ", writer=" + writer + ", content=" + content + ", createdDate=" + createdDate
				+ ", boardNo=" + boardNo + "]";
	}
	
}
