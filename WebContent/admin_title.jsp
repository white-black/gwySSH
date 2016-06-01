<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <link rel="stylesheet" type="text/css" href="css/common.css"/>
 <link rel="stylesheet" type="text/css" href="css/main.css"/>
<script type="text/javascript" src="js/libs/modernizr.min.js"></script>
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<style>
	.myHeight{
		min-height:100px;
	}
</style>
        <div class="result-wrap">
        	<div class="result-content">
                <form action="saveTitle?pageNumber=1" method="post" id="myform" name="myform" enctype="multipart/form-data">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        	<tr>
                                <th><i class="require-red"></i>试题名称：</th>
                                <td>
                                    <input class="common-text required" id="title1" name="title.testname" size="50" value="<s:property value="title.testname"/>" type="text">
                                     <select id="title2" style="width:200px;">
	                                    <option value="无"></option>
	                                    <s:iterator value="angleTitleTestnames" status="st">
	                                    	<option value="<s:property />"><s:property /></option>
	                                    </s:iterator>
	                                </select>
                                </td>
                            </tr>
                            <script>
                            	$(function(){
                            		$("#title2").change(function(){
                            			$("#title1").attr("value",$("#title2").val());
                            		});
                            	});
                            </script>
                            <tr>
                                <th><i class="require-red"></i>所属类别：</th>
                                <td>
                                    <select name="title.subjectname" id="forType">
	                                    <option value="无"></option>
	                                    <option value="行测" style="font-size:20px;background-color:#F5F5F5;">行测</option>
	                                    <option value="言语理解与表达">言语理解与表达</option>
	                                    <option value="数量关系">数量关系</option>
	                                    <option value="判读推理">判读推理</option>
	                                    <option value="资料分析">资料分析</option>
	                                    <option value="常识判断">常识判断</option>
	                                    <option value="申论" style="font-size:20px;background-color:#F5F5F5;">申论</option>
	                                    <option value="<s:property value="title.subjectname"/>" class="hide" style="display:none;" selected="selected"><s:property value="title.subjectname"/></option>
	                                </select>
                                </td>
                            </tr>
                            <script>
                            	$(function(){
                            		$("#forType").change(function(){
                            			if($("#forType").val() == "申论"){
                            				$("#a,#b,#c,#d,#right").attr("disabled","disabled")
                            				.css("background-color","#F5F5F5"); 
                            			}
                            		});
                            	});
                            </script>
                        	 <tr>
                                <th><i class="require-red">*</i>题目名称：</th>
                                <td>
                                    <!-- <input class="common-text required myHeight" id="title" name="title.titlename" size="50" value="" type="text"> -->
                                	<textarea name="title.titlename" rows="5" cols="60"><s:property value="title.titlename"/></textarea>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>选项A：</th>
                                <td>
                                    <input class="common-text required" id="a" name="title.a" size="50" value="<s:property value="title.a"/>" type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>选项B：</th>
                                <td>
                                    <input class="common-text required" id="b" name="title.b" size="50" value="<s:property value="title.b"/>" type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>选项C：</th>
                                <td>
                                    <input class="common-text required" id="c" name="title.c" size="50" value="<s:property value="title.c"/>" type="text">
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>选项D：</th>
                                <td>
                                    <input class="common-text required" id="d" name="title.d" size="50" value="<s:property value="title.d"/>" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>正确答案编号：</th>
                                <td>
                                	<select name="title.rightselect" id="right">
                                    <option value="无"></option>
                                    <option value="A">A</option>
                                    <option value="B">B</option>
                                    <option value="C">C</option>
                                    <option value="D">D</option>
                                    <option value="<s:property value="title.rightselect"/>" class="hide" style="display:none;" selected="selected"><s:property value="title.rightselect"/></option>
                                    
                                </select>
                                </td>
                            </tr>
							<tr>
                                <th><i class="require-red"></i>解析：</th>
                                <td>
                                    <!-- <input class="common-text required myHeight" id="title" name="title.analysis" size="50" value="" type="text"> -->
                                    <textarea name="title.analysis" rows="10" cols="60"><s:property value="title.analysis"/></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th></th>
                                <td>
                                    <input id="subm" onclick="return sub_alter()" class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                </td>
                            </tr>
                        </tbody></table>
                </form>
            </div>
            
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>题目ID</th>
                            <th>题目名称</th>
                            <th>题库名称</th>
                            <th>科目名称</th>
                            <th>添加时间</th>
                            <th>操作</th>
                        </tr>
                        <s:iterator value="titles" status="st">
	                        <tr>
	                            <td><s:property value="titleid"/> </td>  <!--标签ID-->
	                            <td><s:property value="titlename"/></td> <!--标签名称-->
	                            <td><s:property value="testname"/></td>
	                            <td><s:property value="subjectname"/></td>
	                            <td><s:property value="savetime"/></td>
	                            <td>
	                                <a class="link-del" onclick="return del()" href="delTitle.action?id=<s:property value="titleid"/>">删除</a>
	                                <a class="link-del" onclick="alter()" href="alterTitle.action?id=<s:property value="titleid"/>" >修改</a>
	                            </td>
	                        </tr>
	                     </s:iterator>
	                     <script>
	                     	function del(){
	                     		if(!confirm("确认要删除？")){ 
                        			window.event.returnValue = false; 
                        			} 
	                     	}
	                     	function alter(){
	                     		$(".hide").show();
	                     		$("#sumb").attr("onClick","return sub_alter()");	                     		
	                     	}
	                     	function sub_alter(){
   	                     		if(!confirm("确认提交？")){ 
                           			window.event.returnValue = false; 
                           			} 
   	                     	}
	                     </script>
                    </table>
                    <div class="list-page"> 
                    	<s:property value="fenye.pageNumber"/>|<s:property value="fenye.totalPage"/>
						<s:url id="firstPage" action='admin_title'>
							<s:param name='pageNumber'>1</s:param>
						</s:url>
						<s:a href="%{firstPage}">首页</s:a>
						<s:url id="prePage" action='admin_title'>
							<s:param name="pageNumber">
								<s:property value="pageNumber-1"/>
							</s:param>
						</s:url>
						<s:a href="%{prePage}">上一页</s:a>
						<s:url id="nextPage" action='admin_title'>
							<s:param name="pageNumber">
								<s:property value="pageNumber+1"/>
							</s:param>
						</s:url>
						<s:a href="%{nextPage}">下一页</s:a>
						
						<s:url id="lastPage" action='admin_title'>
							<s:param name="pageNumber">
								<s:property value="fenye.totalPage"/>
							</s:param>
						</s:url>
						<s:a href="%{lastPage}">末页</s:a>
                    </div>
                </div>
            </form>
        </div>