 package com.gwytest.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.gwytest.dao.TbTitleDao;
import com.gwytest.dao.TbUsertitleDao;
import com.gwytest.entity.TbTitle;
import com.gwytest.entity.TbUser;
import com.gwytest.entity.TbUsertitle;
import com.opensymphony.xwork2.ActionSupport;

@Controller("xingce")
public class XingceAction extends ActionSupport{
	private int id;
	private int pageNumber;
	FenYe fenye = new FenYe();
	private TbTitle title;
	private List<TbTitle> titles;
	private TbTitleDao td;
	private TbUsertitle userTitle;
	private TbUsertitleDao utd;
	public TbUsertitle getUserTitle() {
		return userTitle;
	}
	public void setUserTitle(TbUsertitle userTitle) {
		this.userTitle = userTitle;
	}
	public TbUsertitleDao getUtd() {
		return utd;
	}
	@Resource(name="tbusertitledao")
	public void setUtd(TbUsertitleDao utd) {
		this.utd = utd;
	}
	public TbTitle getTitle() {
		return title;
	}
	public void setTitle(TbTitle title) {
		this.title = title;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public List<TbTitle> getTitles() {
		return titles;
	}
	public void setTitles(List<TbTitle> titles) {
		this.titles = titles;
	}
	public TbTitleDao getTd() {
		return td;
	}
	@Resource(name="tbtitledao")
	public void setTd(TbTitleDao td) {
		this.td = td;
	}
	public String execute(){
		String hql = "from TbTitle where subjectname not like '申论'";
		String hql_count = "select count(*) from TbTitle where subjectname not like '申论'";
		titles = td.findByHQL(hql);
		for(int i = 0; i < titles.size(); i++){
			for  (int j = i+1; j < titles.size(); j++ ){
				if((titles.get(i).getTestname()).equals(titles.get(j).getTestname())){
					titles.remove(i);
				}
			}
		}
		/*int totalPage = td.getTotal(hql_count);
		fenye.setPageSize(10);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		titles = td.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());*/
		return SUCCESS;
	}
	private static Map myRights;//存放数据库传到页面试题的id 和正确答案 顺序不一定一样
	private static List myTitleId;//存放页面中试题的顺序id
	public String xingceExam(){
		myRights = new HashMap();
		myTitleId = new ArrayList();
		title = td.findById(id);
		String hql = "from TbTitle title where title.testname like '"+title.getTestname()+"'";
		titles = td.findByHQL(hql);
		Iterator<TbTitle> it = titles.iterator();
		while(it.hasNext()){
			TbTitle t = it.next();
			myRights.put((new Integer(t.getTitleid())).toString(), t.getRightselect());
			myTitleId.add(t.getTitleid());
		}
		for(Object obj:myRights.keySet()){
			String rightSel = (String) myRights.get(obj);
		}
		//保存用户点击的历史
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		userTitle = new TbUsertitle();
		userTitle.setFlag1(1);
		userTitle.setTbUser(user);
		userTitle.setTbTitle(title);
		utd.save(userTitle);
		return SUCCESS;
	}
	public String allXingceExam(){
		String hql = "from TbTitle title where title.subjectname not like '申论'";
		titles = td.findByHQL(hql);
		return SUCCESS;
	}
	//管理后台下拉列表中的值
	public String allShenlunTest(){
		String hql = "from TbTitle title where title.subjectname like '申论'";
		String hql_count = "select count(*) from TbTitle title where title.subjectname like '申论'";
		int totalPage = td.getTotal(hql_count);
		fenye.setPageSize(10);
		fenye.setTotalPage(totalPage);
		if(this.pageNumber <= 0){
			this.pageNumber = 1;
		}
		if(this.pageNumber > fenye.getTotalPage()){
			this.pageNumber = fenye.getTotalPage();
		}
		fenye.setPageNumber(pageNumber);
		titles = td.findByHQL(hql, fenye.getPageNumber()-1, fenye.getPageSize());
		return SUCCESS;
	}
	public String shenlunExam(){
		TbTitle title = td.findById(id);
		String hql = "from TbTitle title where title.testname like '"+title.getTestname()+"'";
		titles = td.findByHQL(hql);
		return SUCCESS;
	}
	private static List myanswers;//存放页面中试题的正确答案 按顺序
	private static Map myMap;//存放页面中试题的id 和选择的答案
	public String getAnswer(){
		myanswers = new ArrayList();
		myMap = new HashMap();
		HttpServletRequest request = ServletActionContext.getRequest();
		String[] myanswer = new String[20];
		for(int i = 0;i <20 ; i++){
			myanswer[i]="myanswer"+(i+1);
			if(request.getParameter(myanswer[i]) != null){
				myanswers.add(request.getParameter(myanswer[i]));
			}
		}
		Iterator myTitleIdIt = myTitleId.iterator();
		Iterator myanswersIt = myanswers.iterator();
		for(int i = 0;i<myanswers.size();i++){
			while(myTitleIdIt.hasNext()&&myanswersIt.hasNext()){
				myMap.put(myTitleIdIt.next().toString(), myanswersIt.next().toString());				
			}
		}
		List myListId = bijiao();
		HttpSession session = request.getSession();
		TbUser user = (TbUser) session.getAttribute("user");
		Iterator it = myListId.iterator();
		while(it.hasNext()){
			userTitle = new TbUsertitle();
			userTitle.setFlag3(1);
			userTitle.setTbUser(user);
			String st = it.next().toString();
			title = td.findById(Integer.parseInt(st));
			userTitle.setTbTitle(title);
			utd.save(userTitle);
		}
		return SUCCESS;
	}
	//得到的答案与正确答案比较 myRights myMap
	private List bijiao(){
		List errorId = new ArrayList();//存放错误试题的id
		Set<String> mySet = myRights.keySet();
		Iterator<String> it = mySet.iterator();
		while(it.hasNext()){
			String key = it.next().toString();
			String v1 = myRights.get(key).toString();
			String v2 = myMap.get(key).toString();
			if(!v1.equals(v2)){
				errorId.add(key);
			}
		}
		return errorId;
	}
}
