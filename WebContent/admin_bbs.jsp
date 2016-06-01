<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <link rel="stylesheet" type="text/css" href="css/common.css"/>
 <link rel="stylesheet" type="text/css" href="css/main.css"/>
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<style>
	.myHeight{
		min-height:400px;
	}
</style>
        <div class="result-wrap">
        	<div class="result-content">
                <form action="saveBbs.action" method="post" id="myform" name="myform">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red">*</i>公告标题：</th>
                                <td>
                                    <input class="common-text required" id="title" name="bbs.bbstitle" size="50" value="" type="text">
                                </td>
                            </tr>
                        	 <tr>
                                <th><i class="require-red">*</i>公告内容</th>
                                <td>
                                    <input class="common-text required myHeight" id="title" name="bbs.bbscontent" size="50" value="" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="发布" type="submit">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
            
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>公告ID</th>
                            <th>公告名称</th>
                            <th>发布时间</th>
                            <th>发布作者</th>
                            <th>操作</th>
                        </tr>
                         <s:iterator value="bbss" status="st">
	                        <tr>
	                            <td><s:property value="bbsid"/> </td>  <!--标签ID-->
	                            <td><s:property value="bbstitle"/></td> <!--标签名称-->
	                            <td><s:property value="bbstime"/></td>
	                            <td><s:property value="tbUser.username"/></td>
	                            <td>
	                                <a class="link-del" href="#">删除</a>
	                                <a class="link-del" href="#">修改</a>
	                            </td>
	                        </tr>
	                     </s:iterator>
                    </table>
                    <div class="list-page"> 
                    <s:property value="fenye.pageNumber"/>|<s:property value="fenye.totalPage"/>
						<s:url id="firstPage" action='admin_bbs'>
							<s:param name='pageNumber'>1</s:param>
						</s:url>
						<s:a href="%{firstPage}">首页</s:a>
						<s:url id="prePage" action='admin_bbs'>
							<s:param name="pageNumber">
								<s:property value="pageNumber-1"/>
							</s:param>
						</s:url>
						<s:a href="%{prePage}">上一页</s:a>
						<s:url id="nextPage" action='admin_bbs'>
							<s:param name="pageNumber">
								<s:property value="pageNumber+1"/>
							</s:param>
						</s:url>
						<s:a href="%{nextPage}">下一页</s:a>
						
						<s:url id="lastPage" action='admin_bbs'>
							<s:param name="pageNumber">
								<s:property value="fenye.totalPage"/>
							</s:param>
						</s:url>
						<s:a href="%{lastPage}">末页</s:a>
                    </div>
                </div>
            </form>
        </div>