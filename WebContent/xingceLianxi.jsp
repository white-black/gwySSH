<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/page.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statictext/css/dailog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/jquery.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/paper.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/jquery.simplemodal.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statictext/js/jquery.scrollto.min.js" ></script>
</head>
<body>

<script>
$(function(){
    $('.page_but').find("a").click(function(){
        if($('#question_' + $(this).index()).length > 0){
            $.scrollTo($('#question_' + $(this).index()), {duration:200} );
        }
        else{
            ajax_chapter($(this).data('chapter-index'), $(this).data('question-index'));
        }
    });
});
</script>
<%@ include file="header.jsp" %>
<div class="main">
	<div class="box">
		<div class="page_content" data-id="4271570" data-system-time="1459486963" data-version="0" data-q-num="132" data-do-q-num="0">
			<div class="page_nav"><a href="">行测</a> &gt;&gt; <a href="">随便练练</a>
			</div>
			<div class="hc_title">随便练练</div>
			<div class="left">
				<div style="height:1px;"></div>
				<div style="width:144px; position:fixed;">
					<div class="hc_time" id="hc_time">00:45:00</div>
					<ul style="height:160px;">
						<!-- <li id="paper_pause">暂停</li> -->
						<li id="paper_submit" onclick="sub()">我要交卷</li>
						<script>
						function sub(){
							var flag = false;
							if(confirm("确认提交？")){
								flag = true;
								}
							return flag;
						}
						</script>
						<!-- <li id="paper_save">下次继续做</li> -->
					</ul>
					<div></div>
				</div>
			</div>
			<div class="right" style="position:relative;">
				<ul class="hc_tab">
					<li><a class="focus" href="" data-chapter-index="0" id="chapter_0">常识判断</a></li>
					<li><a  href="" data-chapter-index="1" id="chapter_1">言语理解</a></li>
					<li><a  href="" data-chapter-index="2" id="chapter_2">数量关系</a></li>
					<li><a  href="" data-chapter-index="3" id="chapter_3">判断推理</a></li>
					<li><a  href="" data-chapter-index="4" id="chapter_4">资料分析</a></li>
				</ul>
				<div class="chapter-desc-list" style="padding:5px 20px;">
					<div class="description " style="padding:5px;border:1px solid #ccc;" data-chapter-index="0"></div>
					<div class="description hide" style="padding:5px;border:1px solid #ccc;" data-chapter-index="1"></div>
					<div class="description hide" style="padding:5px;border:1px solid #ccc;" data-chapter-index="2"></div>
					<div class="description hide" style="padding:5px;border:1px solid #ccc;" data-chapter-index="3"></div>
					<div class="description hide" style="padding:5px;border:1px solid #ccc;" data-chapter-index="4">
				</div>
			</div>
			<div id="paper_main">
				<s:iterator value="titles" status="st">
				<div class="question_wrap" data-id="7561" data-question-index="0" id="question_0">
					<div class="title">
						<b><s:property value="#st.index+1"/> </b><div class="title_c"><s:property value="titlename"/></div>
					</div>
					<div class="options">
						<div class="option"><span>A.</span><p><s:property value="a"/></p></div>
						<div class="option"><span>B.</span><p><s:property value="b"/></p></div>
						<div class="option"><span>C.</span><p><s:property value="c"/></p></div>
						<div class="option"><span>D.</span><p><s:property value="d"/></p></div>
					</div>
					<div class="answer">
						<ul class="choose">
							<li><input type="radio" name="radio_7561" value="0"  onclick="ajax_answer(0, 0);" /><span>A</span></li>
							<li><input type="radio" name="radio_7561" value="1"  onclick="ajax_answer(0, 1);" /><span>B</span></li>
							<li><input type="radio" name="radio_7561" value="2"  onclick="ajax_answer(0, 2);" /><span>C</span></li>
							<li><input type="radio" name="radio_7561" value="3"  onclick="ajax_answer(0, 3);" /><span>D</span></li>
						</ul>                       
					</div>
				</div>
				<div class="question_wrap" data-id="1525" data-question-index="1" id="question_1">
				</div>  
			</s:iterator>         	         
			</div>
				<div style="position:fixed;bottom:60px;margin-left:860px;;width:29px;height:82px;">
					<a href="#" onclick="$.scrollTo($('.page_content'));"><img src="${pageContext.request.contextPath }/statictext/img/top.jpg" /></a>
				</div>
			</div>
		</div>
		<div class="box_bottom"><img src="${pageContext.request.contextPath }/statictext/img/box_bottom_bg02.jpg"/></div>
	</div>
</div>
</body>
</html>
