package com.xiaonei.entity;

import java.util.Date;

public class Photocomment {

	private String Photoid;
	
	private int albumId;
	
	private String comment;
	
	private Date addTime;

	public String getPhotoid() {
		return Photoid;
	}

	public void setPhotoid(String photoid) {
		Photoid = photoid;
	}

	public int getAlbumId() {
		return albumId;
	}

	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	
	

	
}
