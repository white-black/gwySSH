package com.gwytest.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.dao.TbUserDao;
import com.gwytest.dao.TbUsertitleDao;
import com.gwytest.entity.TbUser;
import com.gwytest.entity.TbUsertitle;
import com.opensymphony.xwork2.ActionSupport;
@Controller("user")
public class UserAction extends ActionSupport{
	private int id;
	private String password;//修改后的密码
	private int a_key;
	private TbUser user;
	private TbUserDao ud;
	private TbUsertitle userTitle;
	private List<TbUsertitle> userTitles;
	private TbUsertitleDao utd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
	public TbUserDao getUd() {
		return ud;
	}
	@Resource(name="tbuserdao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	public TbUsertitle getUserTitle() {
		return userTitle;
	}
	public void setUserTitle(TbUsertitle userTitle) {
		this.userTitle = userTitle;
	}
	public List<TbUsertitle> getUserTitles() {
		return userTitles;
	}
	public void setUserTitles(List<TbUsertitle> userTitles) {
		this.userTitles = userTitles;
	}
	public TbUsertitleDao getUtd() {
		return utd;
	}
	@Resource(name="tbusertitledao")
	public void setUtd(TbUsertitleDao utd) {
		this.utd = utd;
	}
	public int getA_key() {
		return a_key;
	}
	public void setA_key(int a_key) {
		this.a_key = a_key;
	}
	public String execute(){
		System.out.println(a_key);
		return SUCCESS;
	}
	public String alterPas(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		session.setAttribute("user", null);
		user = ud.findById(id);
		user.setUserpassword(password);
		ud.update(user);
		return SUCCESS;
	}
	public String myError(){
		String hql = "from TbUsertitle tut left outer join fetch tut.tbTitle where tut.flag3 = 1";
		userTitles = utd.findByHQL(hql);
		return SUCCESS;
	}
	public String myHistory(){
		String hql = "from TbUsertitle tut left outer join fetch tut.tbTitle where tut.flag1 = 1";
		userTitles = utd.findByHQL(hql);
		return SUCCESS;
	}
}
