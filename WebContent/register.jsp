<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="statictext/img/content.css" type="text/css" rel="stylesheet" />
<link href="statictext/img/dialog.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="statictext/js/jquery.js"></script>
<script>
	$(function(){
		$("#username").blur(function(){
			if($("#username").val()==null || $("#username").val()==""){
				$("#message_name").text("请输入用户名！");
			}else{
				$("#message_name").text("");
			}
		});
		$("#password1").blur(function(){
			if($("#password1").val()==null || $("#password1").val()==""){
				$("#message_password1").text("请输入密码！");
			}else{
				$("#message_password1").text("");
			}
		});
		$("#password2").blur(function(){
			if($("#password1").val() != $("#password2").val()){
				$("#message_password2").text("确认密码与密码不一样，请重新输入");
			}else{
				$("#message_password2").text("");
			}
		});	
	});
</script>
</head>
<body>
<script type="text/javascript" src="statictext/js/jquery.js" ></script>
<script type="text/javascript" src="statictext/js/jquery.simplemodal.js" ></script>
<%@ include file="header.jsp" %>
<div class="main">
	<div class="box2">
        <div class="page_content2">
            <div class="page_nav2">
				<h1><span class="lf"></span><span class="title">用户注册</span><span class="rt"></span>
				<div class="clear"></div></h1>
				<form id="register_form" method="post" action="register">               
					<table class="logintable" style="width:650px;">
						<tr>
							<td width="70">账号：</td>
							<td width="500">
								<input type="text" class="" id="username" name="user.username" />
								<span>3-15位，支持中文、字母、数字、下划线和小数点</span><br />
								<s:if test="#request.register_flag == 1">
									<script>
										$(function(){
											$("#message_name").text("用户名已存在，请重新输入！");											
										});
									</script>
								</s:if>
								<s:elseif test="#request.register_flag == 0">
									<script>
										$("#message_name").text("");
									</script>
								</s:elseif>
								<span id="message_name" style="color:red;"></span>
							</td>
						</tr>
						<tr>
							<td>密码：</td>
							<td><input type="password" class="" id="password1" name="user.userpassword" value="" />
								<span id="message_password1" style="color:red;"></span>
							</td>
							
						</tr>
						<tr>
							<td>确认密码：</td>
							<td><input type="password" class="" id="password2" name="password2"  />
								<span id="message_password2" style="color:red;"></span>
							</td>							
						</tr>
						<tr>
							<td></td>
							<td>
								<button style="border-width:0;" class="registbt" id="register" type="submit" value="注册" name="btn_val1"></button>
								<!-- <button style="border-width:0;" class="redirectbt" type="submit" value="直接做题" name="btn_val1"></button> -->
							</td>
						</tr>
						<tr>
							<td></td>
							<td><span class="auto">已有账号？<a href="${pageContext.request.contextPath }/login.jsp" >直接登录>></a></span></td>
						</tr>
					</table>
				</form>              
</div>
                
            </div>
            <div class="box_bottom2"><img src="statictext/img/box_bottom_bg2.jpg" tppabs="http://exam.chinagwy.org/statictext/img/box_bottom_bg2.jpg" /></div>
        </div>
        
</div>

<div id="register_protocol" style="display:none;"></div>

<script type="text/javascript">
function show_protocol()
{
    var protocol = $('#register_protocol').html();
    var html = '';
    html += '<div class="commit-exercise-wrap" style="width:800px;height:450px; overflow:scroll;"><div class="commit-exercise">';
    html += '<div class="lead">'+protocol+'</div>';
    html += '</div>';
    $.modal(html);

    $('#simplemodal-overlay').click(function(){
        $.modal.close();
    });
}
</script> 
</body>
</html>
