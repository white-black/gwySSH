package com.gwytest.entity;
// Generated 2016-5-5 2:54:23 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * TbComment generated by hbm2java
 */
public class TbComment implements java.io.Serializable {

	private int commentid;
	private TbTitle tbTitle;
	private TbUser tbUser;
	private String commentcontent;
	private Date commenttime;

	public TbComment() {
	}

	public TbComment(int commentid, TbTitle tbTitle, TbUser tbUser, String commentcontent, Date commenttime) {
		this.commentid = commentid;
		this.tbTitle = tbTitle;
		this.tbUser = tbUser;
		this.commentcontent = commentcontent;
		this.commenttime = commenttime;
	}

	public int getCommentid() {
		return this.commentid;
	}

	public void setCommentid(int commentid) {
		this.commentid = commentid;
	}

	public TbTitle getTbTitle() {
		return this.tbTitle;
	}

	public void setTbTitle(TbTitle tbTitle) {
		this.tbTitle = tbTitle;
	}

	public TbUser getTbUser() {
		return this.tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}

	public String getCommentcontent() {
		return this.commentcontent;
	}

	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}

	public Date getCommenttime() {
		return this.commenttime;
	}

	public void setCommenttime(Date commenttime) {
		this.commenttime = commenttime;
	}

}
