<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/statictext/bootstrap.min.css">  
<script src="${pageContext.request.contextPath}/statictext/jquery-1.7.2.min.js"></script>
<script src="${pageContext.request.contextPath}/statictext/bootstrap.min.js"></script>
 <style>
		#login_,#register_{
			float:right;
			margin:10px;
		}
		.my_nav{
			background: #333;
			font-size:20px;
			color:white;
		}
		.my_nav a:hover{
			background: #2580a2;
			color: #fff;
			padding-bottom: 8px;      
		}
		.toolbar{
			float:right;
			margin-right:15px;
			
		}
  </style>
<script type="text/javascript" src="statictext/js/jquery.js"></script>
<script>
$(function(){
	$("li").click(function(){
		$(".active").removeClass("active");
		$(this).addClass("active");
	});
});
</script>
<div class="container-fluid my_nav">
  <div class="container">
    <div class="">
      <div class="">
	    <ul class="nav nav-tabs">
          <li class="active"><a href="${pageContext.request.contextPath }/index.jsp" ><span>首 页</span></a></li>
          <li class=""><a href="${pageContext.request.contextPath }/xingce.jsp" ><span>行 测</span></a></li>
          <li class=""><a href="${pageContext.request.contextPath }/allShenlunTest.action" ><span>申 论</span></a></li>
          <li class=""><a href="${pageContext.request.contextPath }/ziliao.jsp" ><span>资料下载</span></a></li>
          <li class=""><a href="${pageContext.request.contextPath }/userCentre.jsp" ><span>个人中心</span></a></li>
          <li class=""><a href="${pageContext.request.contextPath }/bbs.jsp" ><span>网站公告</span></a></li>
          <s:if test="#session.user.username != null">
          	<s:if test="#session.user.usertype == 1">
				<div class="toolbar">
					你好！<a href="enterBackstage.action"><s:property value="#session.user.username"/></a><a href="quit.action">退出</a>  
				</div>          	
          	</s:if>
          	<s:else>
          		<div class="toolbar">
					你好！<s:property value="#session.user.username"/><a href="quit.action">退出</a>  
				</div>
          	</s:else>
				<script type="text/javascript">
				$(function(){
					$("#toolbar").hide();					
				});
			</script>
			</s:if>
			<s:elseif test="#session.user == null">
			<div class="toolbar" id="toolbar">
				<a href="${pageContext.request.contextPath}/register.jsp">注册</a><a class="point" href="${pageContext.request.contextPath}/login.jsp">登录</a>
			</div>
			</s:elseif>
        </ul>
      </div>
    </div>
  </div>
</div>