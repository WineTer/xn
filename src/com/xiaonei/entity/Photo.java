package com.xiaonei.entity;

import java.util.Date;

public class Photo {

	private int id;
	
	private String photo;
	
	private int albumId;
	
	private String descript;
	
	private Date rTime;
	
	private Date addTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getAlbumId() {
		return albumId;
	}

	public void setAlbumId(int albumId) {
		this.albumId = albumId;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public Date getrTime() {
		return rTime;
	}

	public void setrTime(Date rTime) {
		this.rTime = rTime;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}
	
	

	
}
