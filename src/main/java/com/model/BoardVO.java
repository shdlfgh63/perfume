package com.model;

import org.apache.ibatis.type.Alias;

import java.sql.Date;
@Alias("BoardVO")
public class BoardVO {
	
	int id;
	int writer;
	String title;
	String content;
	Date regdate;
	String category;
	
	public BoardVO(int id, int writer, String title, String content, Date regdate, String category) {
		this.id = id;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.category = category;
	}

	public BoardVO() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
}
