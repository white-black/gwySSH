package com.gwytest.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("enterbackstage")
public class EnterBackstageAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private TbUser user;
	public TbUser getUser() {
		return user;
	}

	public void setUser(TbUser user) {
		this.user = user;
	}
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		user = (TbUser) session.getAttribute("user");
		if(user != null){
			if(user.getUsertype() == 1){
				return "admin";
			}
			return SUCCESS;
		}
		else
			return INPUT;		
	}
}
