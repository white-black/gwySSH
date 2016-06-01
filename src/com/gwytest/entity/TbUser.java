package com.gwytest.entity;
// Generated 2016-5-5 2:54:23 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * TbUser generated by hbm2java
 */
public class TbUser implements java.io.Serializable {

	private int userid;
	private String username;
	private String userpassword;
	private int usertype;
	private Date publishtime;
	private String question;
	private String answer;
	private int logincount;
	private Set tbComments = new HashSet(0);
	private Set tbBbses = new HashSet(0);
	private Set tbUsertitles = new HashSet(0);

	public TbUser() {
	}

	public TbUser(int userid, String username, String userpassword, int usertype, Date publishtime,
			int logincount) {
		this.userid = userid;
		this.username = username;
		this.userpassword = userpassword;
		this.usertype = usertype;
		this.publishtime = publishtime;
		this.logincount = logincount;
	}

	public TbUser(int userid, String username, String userpassword, int usertype, Date publishtime,
			String question, String answer, int logincount, Set tbComments, Set tbBbses, Set tbUsertitles) {
		this.userid = userid;
		this.username = username;
		this.userpassword = userpassword;
		this.usertype = usertype;
		this.publishtime = publishtime;
		this.question = question;
		this.answer = answer;
		this.logincount = logincount;
		this.tbComments = tbComments;
		this.tbBbses = tbBbses;
		this.tbUsertitles = tbUsertitles;
	}

	public int getUserid() {
		return this.userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpassword() {
		return this.userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public int getUsertype() {
		return this.usertype;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public Date getPublishtime() {
		return this.publishtime;
	}

	public void setPublishtime(Date publishtime) {
		this.publishtime = publishtime;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return this.answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getLogincount() {
		return this.logincount;
	}

	public void setLogincount(int logincount) {
		this.logincount = logincount;
	}

	public Set getTbComments() {
		return this.tbComments;
	}

	public void setTbComments(Set tbComments) {
		this.tbComments = tbComments;
	}

	public Set getTbBbses() {
		return this.tbBbses;
	}

	public void setTbBbses(Set tbBbses) {
		this.tbBbses = tbBbses;
	}

	public Set getTbUsertitles() {
		return this.tbUsertitles;
	}

	public void setTbUsertitles(Set tbUsertitles) {
		this.tbUsertitles = tbUsertitles;
	}

}
