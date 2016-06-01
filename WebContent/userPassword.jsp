<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="box2">
	<div class="page_content2">
		<div class="page_nav2">
			<form id="u_login_form" method="post" action="alterPas.action?id=<s:property value="#session.user.userid"/>">
				<input type="hidden" name="refurl" value="/index.php?mod=exam&amp;act=history">    
				<table class="logintable">
					<tbody><tr>
						<td width="100">原密码：</td>
						<td><input type="text" class="" ></td>
					</tr>
					<tr>
						<td>新密码：</td>
						<td><input type="password" class="" name="password"></td>
					</tr>
					<tr>
						<td>确认密码：</td>
						<td><input type="password" class="" ></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<button onclick="return altersub()" style="background-color:red;color:white;font-size:20px;border-width:0;width:120px; height:32px;" type="submit" value="提交" name="btn_val1">提交</button>
							<!-- <button style="border-width:0;" class="redirectbt" type="submit" value="直接做题" name="btn_val1"></button> -->
						</td>
					</tr>
					<s:if test="#session.user == null">
						<script>
							function altersub(){
								alert("登录后，再进行修改密码");
								return false;
							}
						</script>
					</s:if>
				</tbody>
				</table> 
			</form>                
		</div>
	</div>
</div>