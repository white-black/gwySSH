<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>申论题库</title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/content.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%@ include file="header.jsp" %>
    </div><div class="main">
        <div class="box2">
            <div class="page_content2">
                <div class="page_nav2">             
 <table class="topiclist">
 	<s:iterator value="titles" status="st">
        <tr>
		    <td>
		    <h3><s:property value="testname"/></h3>
		    </td>
		    <td class="enter_bt" ><a href="shenlunExam.action?id=<s:property value="titleid"/>"></a></td>
   		 </tr>
   	</s:iterator>
     </table>
 <div class="topiclist"><style type="text/css">.pages{text-align:center;font-size:12px;} .pages *{border:1px solid #E6E7E1;height:24px;line-height:24px;padding:3px 6px;margin:1px;color:#0099CC;} .pages b{background-color:#0099CC;border-color:#0099CC;color:#FFFFFF;} .pages a {text-decoration:none;} .pages a:hover{border-color:#0099CC;} .pn{border-color:#0099CC;}</style><div class="pages">
 <div class="list-page"> 
                <!-- 定义pageNumber值为1的URL值，以及【首页】链接 -->
		<s:property value="fenye.pageNumber"/>|<s:property value="fenye.totalPage"/>
		<s:url id="firstPage" action='allShenlunTest'>
			<s:param name='pageNumber'>1</s:param>
		</s:url>
		<s:a href="%{firstPage}">首页</s:a>
		<s:url id="prePage" action='allShenlunTest'>
			<s:param name="pageNumber">
				<s:property value="pageNumber-1"/>
			</s:param>
		</s:url>
		<s:a href="%{prePage}">上一页</s:a>
		<s:url id="nextPage" action='allShenlunTest'>
			<s:param name="pageNumber">
				<s:property value="pageNumber+1"/>
			</s:param>
		</s:url>
		<s:a href="%{nextPage}">下一页</s:a>
		
		<s:url id="lastPage" action='allShenlunTest'>
			<s:param name="pageNumber">
				<s:property value="fenye.totalPage"/>
			</s:param>
		</s:url>
		<s:a href="%{lastPage}">末页</s:a>
                </div></div></div>     
                
</div>
                
            </div>
            <div class="box_bottom2"><img src="${pageContext.request.contextPath }/statictext/img/box_bottom_bg2.jpg" /></div>
        </div>
</div>
</body>
</html>
