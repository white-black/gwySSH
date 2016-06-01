package com.gwytest.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.dao.TbUserDao;
import com.gwytest.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("login")
public class LoginAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private TbUser user;
	private TbUserDao ud;
	private String btn_val1; 
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
	public String getBtn_val1() {
		return btn_val1;
	}

	public void setBtn_val1(String btn_val1) {
		this.btn_val1 = btn_val1;
	}

	public String execute(){		
		HttpServletRequest request = ServletActionContext.getRequest();
		String requestPathAll=request.getHeader("referer");
		String requestPath = requestPathAll.substring(requestPathAll.indexOf("_java")+5);
		HttpSession session = request.getSession();
		session.setAttribute("requestPath", requestPath);
		request.setAttribute("login_flag", 0);
		if(btn_val1.equals("登录")){
			String hql = "from TbUser";
			List<TbUser> userFromDBs = ud.findByHQL(hql);
			for(TbUser tbuser : userFromDBs){
				if(tbuser.getUsername().equals(user.getUsername()) && tbuser.getUserpassword().equals(user.getUserpassword())){
					session.setAttribute("user", tbuser);
					request.setAttribute("login_flag", 1);
					return SUCCESS;
				}
			} 
			return INPUT;			
		}
		else if(btn_val1.equals("直接做题")){
			user.setUsername("test01");
			user.setUserpassword("test0000");
			session.setAttribute("user", user);
		}
		return INPUT;
	}
	public String quit(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if(session.getAttribute("user") != null){
			TbUser tu = (TbUser) session.getAttribute("user");
			tu.setLogincount(tu.getLogincount()+1);			
			ud.update(tu);
			session.setAttribute("user", null);
			return SUCCESS;
		}
		return INPUT;
	}
}
