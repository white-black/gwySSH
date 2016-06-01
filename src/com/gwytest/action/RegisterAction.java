package com.gwytest.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.dao.TbUserDao;
import com.gwytest.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;

@Controller("register")
public class RegisterAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private TbUser user;
	private TbUserDao ud;
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
	public String execute() throws ParseException{
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		/*String requestPathAll=request.getHeader("referer");
		String requestPath = requestPathAll.substring(requestPathAll.indexOf("_java")+5);
		session.setAttribute("requestPath", requestPath);*/
		request.setAttribute("register_flag", 0);
		/*SimpleDateFormat tempDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String datetime = tempDate.format(new java.util.Date());
		java.util.Date date = tempDate.parse(datetime);*/
		String hql = "from TbUser";
		List<TbUser> userFromDBs = ud.findByHQL(hql);
		for(TbUser tbuser : userFromDBs){
			if(user.getUsername().equals(tbuser.getUsername()) ){
				request.setAttribute("register_flag", 1);
				return INPUT;
			}
		}
		user.setPublishtime(new java.util.Date());
		ud.save(user);
		return SUCCESS;	
	}
}
