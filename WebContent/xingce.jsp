<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/content.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
</head>

<body>
<%@ include file="header.jsp" %>
	<div class="headtitle">
		<div class="headtitle3_in">
			<h1>在线题库 • 行测</h1>
			<p>　　考生可以通过系统自动分配的题目进行知识点专项训练，或通过系统从题库中随机抽取题目自动组卷，也可以选择各地真题试卷直接在线考试，通过题库大量的练习来提高成绩。</p>
		</div>
	</div>
	<div class="main">
		<div class="publicbox box">
			<a href="xingce.action?pageNumber=1" class="training">
				<ul>
					<li><h2>历年真题</h2></li>
					<li><p>收录了近几年国考、联考及省考真题，满足考生通过大量练习提升成绩的同时，题目质量也有保证。</p></li>
				</ul>
			</a>
			<a href="allXingceExam.action"  class="testpaper">
				<ul>
					<li><h2>随便练练</h2></li>
					<li><p>通过海量真题随机组卷，能够更加有效的检验出考生的真是水平。</p></li>
				</ul>
			</a>
			
		</div>         
	</div>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statictext/img/dialog.css" >
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/jquery.js"  ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/jquery.simplemodal.js" ></script>

</body>
</html>
