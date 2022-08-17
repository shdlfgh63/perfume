package com.model;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class EventVO {
	
	int id;
	Date startdate;
	Date enddate;
	String title;
	Date regdate;
	int hit;
	String writer;
	String thumbnail;
	String image;
	MultipartFile thnFile; 
	MultipartFile imgFile;
	
	

	public EventVO(int id, Date startdate, Date enddate, String title, Date regdate, int hit, String writer,
			String thumbnail, String image, MultipartFile thnFile, MultipartFile imgFile) {
		this.id = id;
		this.startdate = startdate;
		this.enddate = enddate;
		this.title = title;
		this.regdate = regdate;
		this.hit = hit;
		this.writer = writer;
		this.thumbnail = thumbnail;
		this.image = image;
		this.thnFile = thnFile;
		this.imgFile = imgFile;
	}

	public EventVO() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public MultipartFile getThnFile() {
		return thnFile;
	}

	public void setThnFile(MultipartFile thnFile) {
		this.thnFile = thnFile;
	}

	public MultipartFile getImgFile() {
		return imgFile;
	}

	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}

}
