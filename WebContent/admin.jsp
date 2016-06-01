<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员中心</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
     <script type="text/javascript" src="statictext/js/jquery.js"></script>
</head>
<body>
<div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="${pageContext.request.contextPath }/index.jsp">回到首页</a></div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href=""><i class="icon-font"></i>常用操作</a>
                    <ul class="sub-menu">        
                        <li><a href="admin.action?a_key=1"><i class="icon-font"></i>用户管理</a></li>
						<li><a href="admin_title.action?a_key=4&pageNumber=1"><i class="icon-font"></i>题目管理</a></li>
						<li><a href="admin_bbs.action?a_key=5&pageNumber=1"><i class="icon-font"></i>网站公告管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
     <div class="main-wrap">
		  <div class="crumb-wrap">
           <span>管理员名称:<s:property value="#session.user.username"/></span>
        </div>
        <s:if test='a_val == "题目管理"'>
        	<script>
        		$(function(){
       				$("#main").hide();
        		});
        	</script>
        	<%@ include file="admin_title.jsp" %>
        </s:if>
        <s:elseif test='a_val == "网站公告管理"'>
        	<script>
        		$(function(){
       				$("#main").hide();
        		});
        	</script>
        	<%@ include file="admin_bbs.jsp" %>
        </s:elseif>
        <div class="result-wrap" id="main">
            <form name="myform" id="myform" method="post" action="admin_user.action?pageNumber=1">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>用户名</th>
                            <th>密码</th>
                            <th>注册时间</th>
                            <th>登录次数</th>
                            <th>操作</th>
                        </tr>
                    	<s:iterator value="users" status="st">
							<tr>
								<td><s:property value="username"/></td>  <!--标签ID-->
	                            <td><s:property value="userpassword"/></td> <!--标签名称-->
	                            <td><s:property value="publishtime"/></td>
	                            <td><s:property value="logincount"/></td>
	                            <td>
	                                <a class="link-del" href="delUser.action?id=<s:property value="userid"/>" onclick="del()">删除</a>
	                                &nbsp;&nbsp;<a class="link-del" href="#" onclick="">广告推送</a>
	                            </td>
							</tr>
						</s:iterator>
						<script type="text/javascript">
						function del(){
							var flag = false;
							if(confirm("确认删除？")){
								flag = true;
								}
							return flag;
						}
						</script>
                    </table>
                    <div class="list-page"> 
                    <!-- 定义pageNumber值为1的URL值，以及【首页】链接 -->
						<s:property value="fenye.pageNumber"/>|<s:property value="fenye.totalPage"/>
						<s:url id="firstPage" action='admin_user'>
							<s:param name='pageNumber'>1</s:param>
						</s:url>
						<s:a href="%{firstPage}">首页</s:a>
						<s:url id="prePage" action='admin_user'>
							<s:param name="pageNumber">
								<s:property value="pageNumber-1"/>
							</s:param>
						</s:url>
						<s:a href="%{prePage}">上一页</s:a>
						<s:url id="nextPage" action='admin_user'>
							<s:param name="pageNumber">
								<s:property value="pageNumber+1"/>
							</s:param>
						</s:url>
						<s:a href="%{nextPage}">下一页</s:a>
						
						<s:url id="lastPage" action='admin_user'>
							<s:param name="pageNumber">
								<s:property value="fenye.totalPage"/>
							</s:param>
						</s:url>
						<s:a href="%{lastPage}">末页</s:a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>