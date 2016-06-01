<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/statictext/img/content.css" type="text/css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="statictext/js/jquery.js"></script>	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="main">
			<div class="box2">
				<div class="page_content2">
					<div class="page_nav2">
						<h1><span class="lf"></span><span class="title">用户登录</span><span class="rt"></span>
						<div class="clear"></div></h1>
						<form id="u_login_form" method="post" action="login.action">
							<input type="hidden" name="refurl" value="/index.php?mod=exam&act=history" />    
							<table class="logintable">
								<tr>
									<td width="60">账号：</td>
									<td><input type="text" class="" name="user.username" /></td>
								</tr>
								<tr>
									<td>密码：</td>
									<td><input type="password" class="" name="user.userpassword" /></td>
								</tr>
								<%-- <tr>
									<td></td>
									<td><a href="${pageContext.request.contextPath }/forgetpassword.jsp" class="forgot">忘记密码</a> </td>
								</tr> --%>
								<tr>
									<td></td>
									<td>
										<button style="border-width:0;" class="loginbt" type="submit" value="登录" name="btn_val1"></button>
										<!-- <button style="border-width:0;" class="redirectbt" type="submit" value="直接做题" name="btn_val1"></button> -->
									</td>
								</tr>
								<s:if test="#request.login_flag == 0">
									<script>
										alert("用户名或密码错误");
									</script>
								</s:if>
							</table> 
						</form>                
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

