package com.sist.dao;

public class SearchVO {
	private String nickname;
	private String title;
	private String content;
	private int cardno;
	private String cardcomm;
	public String getNickname() {
		return nickname;
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
	public int getCardno() {
		return cardno;
	}
	public void setCardno(int cardno) {
		this.cardno = cardno;
	}
	public String getCardcomm() {
		return cardcomm;
	}
	public void setCardcomm(String cardcomm) {
		this.cardcomm = cardcomm;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	
}
