package com.gwytest.action;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.dao.TbBbsDao;
import com.gwytest.dao.TbTitleDao;
import com.gwytest.dao.TbUserDao;
import com.gwytest.entity.TbBbs;
import com.gwytest.entity.TbTitle;
import com.gwytest.entity.TbUser;
import com.opensymphony.xwork2.ActionSupport;
@Controller("admin")
public class AdminAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	//要删除用户的id
	private int id;
	//管理员界面侧边栏连接的标识符
	private int a_key;
	private String a_val;
	private int pageNumber;
	private FenYe fenye = new FenYe();
	//用户管理
	private List<TbUser> users;
	private TbUserDao ud;
	//题目管理
	private TbTitle title;
	private TbTitleDao td;
	private List<TbTitle> titles;
	private List<TbTitle> allTitles;
	private List<TbTitle> angleTitleTestnames;
	//公告管理
	private TbBbs bbs;
	private TbBbsDao bd;
	private List<TbBbs> bbss;

	public TbBbs getBbs() {
		return bbs;
	}
	public void setBbs(TbBbs bbs) {
		this.bbs = bbs;
	}
	public TbBbsDao getBd() {
		return bd;
	}
	@Resource(name="tbbbsdao")
	public void setBd(TbBbsDao bd) {
		this.bd = bd;
	}
	public List<TbBbs> getBbss() {
		return bbss;
	}
	public List<TbTitle> getAngleTitleTestnames() {
		return angleTitleTestnames;
	}
	public void setAngleTitleTestnames(List<TbTitle> angleTitleTestnames) {
		this.angleTitleTestnames = angleTitleTestnames;
	}
	public void setBbss(List<TbBbs> bbss) {
		this.bbss = bbss;
	}
	public TbTitle getTitle() {
		return title;
	}
	public void setTitle(TbTitle title) {
		this.title = title;
	}
	public TbTitleDao getTd() {
		return td;
	}
	@Resource(name="tbtitledao")
	public void setTd(TbTitleDao td) {
		this.td = td;
	}
	public List<TbTitle> getTitles() {
		return titles;
	}
	public void setTitles(List<TbTitle> titles) {
		this.titles = titles;
	}
	public List<TbTitle> getAllTitles() {
		return allTitles;
	}
	public void setAllTitles(List<TbTitle> allTitles) {
		this.allTitles = allTitles;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getA_key() {
		return a_key;
	}
	public void setA_key(int a_key) {
		this.a_key = a_key;
	}
	public String getA_val() {
		return a_val;
	}
	public void setA_val(String a_val) {
		this.a_val = a_val;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public FenYe getFenye() {
		return fenye;
	}
	public void setFenye(FenYe fenye) {
		this.fenye = fenye;
	}
	public List<TbUser> getUsers() {
		return users;
	}
	public void setUsers(List<TbUser> users) {
		this.users = users;
	}
	public TbUserDao getUd() {
		return ud;
	}
	@Resource(name="tbuserdao")
	public void setUd(TbUserDao ud) {
		this.ud = ud;
	}
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		if(a_key == 1){
			setA_val("用户管理");
		}else if(a_key == 4){
			setA_val("题目管理");
		}else if(a_key == 5){
			setA_val("网站公告管理");
		}
		return SUCCESS;
	}
	public String userManager(){
		String hql = "from TbUser where usertype = 0 order by publishtime asc";
		String hql_count = "select count(*) from TbUser where usertype = 0";
		int totalPage = ud.getTotal(hql_count);
		fenye.setPageSize(2);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		users = ud.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		return SUCCESS;
	}
	public String delUser(){
		ud.delete(id);
		return SUCCESS;
	}
	public String saveTitle(){
		title.setSavetime(new java.util.Date());
		td.saveOrUpdate(title);
		title = null;
		return SUCCESS;
	}
	public String titleManager(){
		String hql = "from TbTitle order by savetime desc";
		String hql_count = "select count(*) from TbTitle";
		int totalPage = td.getTotal(hql_count);
		fenye.setPageSize(2);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		titles = td.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		String hql2 = "select title.testname from TbTitle title group by title.testname";
		angleTitleTestnames = td.findByHQL(hql2);
		return SUCCESS;
	}
	public String alterTitle(){
		title = td.findById(id);
		return SUCCESS;
	}
	public String delTitle(){
		td.delete(id);
		return SUCCESS;
	}
	public String saveBbs(){
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		bbs.setTbUser(user);
		bbs.setBbstime(new java.util.Date());
		bd.save(bbs);
		return SUCCESS;
	}
	public String bbsManager(){
		String hql = "from TbBbs order by bbstime desc";
		String hql_count = "select count(*) from TbBbs";
		int totalPage = td.getTotal(hql_count);
		fenye.setPageSize(2);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		bbss = bd.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		return SUCCESS;
	}
	public String delBbs(){
		bd.delete(id);
		return SUCCESS;
	}
}
