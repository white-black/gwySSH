<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>资料下载</title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/content.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="main">
        <div class="box2">
            <div class="page_content2">
                <div class="page_nav2">      
 <table class="topiclist">
        <tr>
    <td>
    <a onclick="down()">2015年新疆兵团公务员考试《申论》真题试卷</a>
    <script>
	function down(){
		var flag = false;
		if(confirm("开始下载？")){
			flag = true;
			}
		return flag;
	}
	</script>
    </td>
    </tr>
        <tr>
    <td>
    <a>2015年宁夏公务员考试《申论》真题试卷</a>
    </td>
    </tr>
     </table>

 <div class="topiclist"><style type="text/css">.pages{text-align:center;font-size:12px;} .pages *{border:1px solid #E6E7E1;height:24px;line-height:24px;padding:3px 6px;margin:1px;color:#0099CC;} .pages b{background-color:#0099CC;border-color:#0099CC;color:#FFFFFF;} .pages a {text-decoration:none;} .pages a:hover{border-color:#0099CC;} .pn{border-color:#0099CC;}</style><div class="pages"><a class="pn" href="">&lt;&lt;</a><a href="" >1</a><b>2</b>
 <a href="" >3</a>
 <a href="" >4</a>
 <a href="" >5</a>
 <a href="" >6</a>
 <a href="" >7</a>
 <a href="" >8</a>
 <a href="" >9</a>
 <a href="" >10</a>
 <a class="pn" href="" >&gt;&gt;</a><a href="">...15</a></div></div>     
                
</div>
                
            </div>
            <div class="box_bottom2"><img src="${pageContext.request.contextPath }/statictext/img/box_bottom_bg2.jpg" tppabs="http://exam.chinagwy.org/${pageContext.request.contextPath }/statictext/img/box_bottom_bg2.jpg" /></div>
        </div>
</div>
</body>
</html>
