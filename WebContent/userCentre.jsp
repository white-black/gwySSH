<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/content.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%@ include file="header.jsp" %>
<div class="main">
		<div class="box2">
        	<div class="page_content2">
            	<div class="page_nav2">
 <h1><span class="lf"></span>
 <ul class="ct_focus">
        <!--  <li class="focus"><a class="typeb" href="upload.action">练习历史</a><span></span></li>-->
        <li><a href="myHistory.action?a_key=1">练习历史</a><span></span></li>
        <li><a href="myError.action?a_key=2">我的错题</a></li>
        <li><a href="user.action?a_key=3">我的收藏</a></li>
        <li><a href="user.action?a_key=4">资料上传</a></li>
        <li><a href="user.action?a_key=5">修改密码</a></li>
 </ul>
 <span class="rt"></span><div class="clear"></div></h1> 
  <s:if test="a_key == 2">
   	<script>
   		$(function(){
  				$("#titleTable").hide();
   		});
   	</script>
   	<%@ include file="userError.jsp" %>
   </s:if>
   <s:elseif test="a_key == 3"></s:elseif>          
   <s:elseif test="a_key == 4">
   		<script>
	   		$(function(){
	  				$("#titleTable").hide();
	   		});
	   	</script>
	   	<%@ include file="userUpload.jsp" %>
   </s:elseif>          
   <s:elseif test="a_key == 5">
   		<script>
	   		$(function(){
	  				$("#titleTable").hide();
	   		});
	   	</script>
	   	<%@ include file="userPassword.jsp" %>
   </s:elseif>          
 <table class="topiclist" style="border-collapse:collapse;" id="titleTable">
 	<s:iterator value="userTitles" status="st">
         <tr>
            <td style="border-bottom:1px solid #ececec;" >
                <h3><s:property value="tbTitle.testname"/></h3>
                <!-- <p>作答时间：2016年03月28日 </p> -->
            </td>
            <td style="border-bottom:1px solid #ececec;" class="view_bt" >
            <a href="index.php?mod=exercise&act=solution&tid=4140445">查看解析</a>            </td>
        </tr>
        </s:iterator>
      </table>   
<div class="topiclist"><style type="text/css">.pages{text-align:center;font-size:12px;} .pages *{border:1px solid #E6E7E1;height:24px;line-height:24px;padding:3px 6px;margin:1px;color:#0099CC;} .pages b{background-color:#0099CC;border-color:#0099CC;color:#FFFFFF;} .pages a {text-decoration:none;} .pages a:hover{border-color:#0099CC;} .pn{border-color:#0099CC;}</style><div class="pages"><b>1</b></div></div>         
                
</div>       
            </div>
            <div class="box_bottom2"></div>
        </div>
</div>
</body>
</html>
