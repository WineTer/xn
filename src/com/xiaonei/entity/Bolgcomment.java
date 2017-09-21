package com.xiaonei.entity;

import java.util.Date;

public class Bolgcomment {

	private int id;
	
	private int bolg_id;
	
	private int userId;
	
	private Date content;
	
	private Date comTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBolg_id() {
		return bolg_id;
	}

	public void setBolg_id(int bolgId) {
		bolg_id = bolgId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Date getContent() {
		return content;
	}

	public void setContent(Date content) {
		this.content = content;
	}

	public Date getComTime() {
		return comTime;
	}

	public void setComTime(Date comTime) {
		this.comTime = comTime;
	}
	
	

}
