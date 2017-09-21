package com.xiaonei.entity;

import java.util.Date;

public class Guestbook {
	
	private int g_id;
	
	private int v_id;
	
	private String v_name;
	
	private int a_id;
	
	private String gusetbook;
	
	private Date creTime;

	public int getG_id() {
		return g_id;
	}

	public void setG_id(int gId) {
		g_id = gId;
	}

	public int getV_id() {
		return v_id;
	}

	public void setV_id(int vId) {
		v_id = vId;
	}

	public String getV_name() {
		return v_name;
	}

	public void setV_name(String vName) {
		v_name = vName;
	}

	public int getA_id() {
		return a_id;
	}

	public void setA_id(int aId) {
		a_id = aId;
	}

	public String getGusetbook() {
		return gusetbook;
	}

	public void setGusetbook(String gusetbook) {
		this.gusetbook = gusetbook;
	}

	public Date getCreTime() {
		return creTime;
	}

	public void setCreTime(Date creTime) {
		this.creTime = creTime;
	}
	
	


}
