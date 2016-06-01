<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="statictext/img/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%@ include file="header.jsp" %>
 	<div class="main">
 		<div class="box">
			<h2 class="yahei">选择要练习的科目</h2>
			<div class="content test">
				<ul>
					<li><span>行政职业能力测验</span><a href="${pageContext.request.contextPath }/xingce.jsp"><p>考生可以通过系统自动分配题目进行知识点专项训练，或通过系统从题库中随机抽取题目自动组卷，也可以选择各地真题试卷直接在线考试，通过题库大量的练习来提高成绩。</p><b>点击进入</b></a></li>
					<li><span class="sl">申论</span><a href="${pageContext.request.contextPath }/allShenlunTest.action"><p>收录了近几年国家及地方各省市公务员考试最新申论真题，并提供了详细的参考解析，考生可以通过多做、多练来提高成绩。</p><b>点击进入</b></a></li>
				</ul>
			</div>
		</div>
	</div> 
</body>
</html>
