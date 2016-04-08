package com.dao;

import java.sql.Date;

public class UserDTO {
	private int idno;
	private String email;
	private String pwd;
	private Date joindate;
	public int getNo() {
		return idno;
	}
	public void setNo(int no) {
		this.idno = no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	
	
}
