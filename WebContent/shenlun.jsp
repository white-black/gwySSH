<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="${pageContext.request.contextPath }/statictext/img/common.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/page.css"  type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath }/statictext/img/dialog.css" type="text/css" rel="stylesheet" />
</head>
<body>

<script>
$(function(){
	$(".Expand_in").hide();
	$('.Expand_btn').click(function(){
			if($(".Expand_in").css("display")=="none"){
				$(".Expand_in").show(100).attr('bshow','true');
				$('.Expand_btn').text("隐藏答题区");
			}else{
				$(".Expand_in").hide(100).attr('bshow','false');
				$('.Expand_btn').text("展开答题区");
			}
			
	});
	
	window.onscroll =function(){
		var Ostop=$(window).scrollTop();
		var footHeight=$(".footer").height();
		var bottomTop=$(document).height()-$(window).height()-footHeight;
		if(Ostop>bottomTop-410){
			$(".Expand_box").css("position","static");
			$(".Expand_in").show();
		}else{
			$(".Expand_box").css("position","fixed");
			if($(".Expand_in").attr('bshow')=='true'){
				$(".Expand_in").show();
			}else{
				$(".Expand_in").hide();
			}
		}
		
		if(Ostop>60){
			$(".hc_side").css("position","fixed");
			$(".hc_side").css("top","0px");
		}else{
			$(".hc_side").css("position","static");
		}
	}
});
</script>
<%@ include file="header.jsp" %>
<div class="main">
	<div class="box">
      	<div class="page_content" data-id="4271623" style="position:relative;">
          	<div class="page_nav"><a href="-mod=shenlun.htm" >申论</a> &gt;&gt; <a href="">北京</a></div>
           		<div class="hc_title">2015年北京公务员考试《申论》真题试卷</div>
            	<div class="left">
					<div style="height:1px;"></div>
					<div class="hc_side" style="width:144px; position:fixed;">
						<div class="hc_time" id="hc_time">00:45:00</div>
						<ul style="height:160px;">
							<li class="on">阅读原题</li>
							<li id="slpaper_submit">我要交卷</li>
							<li id="slpaper_save">下次继续做</li>
						</ul>
						<div>
					</div>
				</div>
			</div>
            <div class="right"> 
				<div class="zuoda_box">
					<h1><span>注意事项</span><a href="javascript:void(0);" onclick="toggle_zuoda_box(1, this);">收起↓</a></h1>
					<div class="text" id="text_box_1" data-flag="0">
						<div>　　1.申论考试与传统的作文考试不同，是分析驾驭材料的能力与表达能力并重的考试。</div>
						<div>　　2.作答参考时限：阅读资料40分钟，作答110分钟。</div>
						<div>　　3.仔细阅读给定的资料，按照后面提出的“作答要求”依次作答在答题纸指定位置。</div>
						<div>　　4.答题时请认准题号，避免答错位置影响考试成绩。</div>
						<div>　　5.作答时必须使用黑色钢笔或签字笔，在答题纸有效区域内作答，超出答题区域的作答无效。</div>					</div>
						<h1><span>给定材料</span><a href="javascript:void(0);" onclick="toggle_zuoda_box(2, this);">收起↓</a></h1>
						<div class="text" id="text_box_2" data-flag="0">
						<div><b>材料1:</b></div>
						<div>第一题</div>
						<div>11</div>
						<div>11</div>
						<div>111</div>
						<div><b>材料2:</b></div>
						<div>22</div>
						<div>222</div>
						<div>22</div>
						<div><b>材料3:</b></div>
						<div>33</div>
						<div>333</div>
						<div>33</div>
						<div><b>材料4:</b></div>
						<div>4</div>
						<div>44</div>
						<div><b>材料5:</b></div>
						<div>5</div>
						<div>55</div>
						<div>55</div>
                <div style="position:fixed;bottom:60px;margin-left:860px;;width:29px;height:82px;">
                        <a href="#" onclick="$.scrollTo($('.page_content'));"><img src="${pageContext.request.contextPath }/statictext/img/top.jpg" tppabs="http://exam.chinagwy.org/${pageContext.request.contextPath }/statictext/img/top.jpg" /></a>
                    </div>
				</div>
				
				<div class="clearfix"></div>
          </div>
 
<div style="z-index:99;margin:0 auto;width:1000px;height:330px;position:relative;">         
	<div class="Expand_box" style="z-index:999; position:fixed; bottom:0;">
	<h1><span class="Expand_btn">展开答题区</span></h1>
	<div class="Expand_in">
	<ul class="tab">
		<li><a class="focus" href="javascript:void(0);" onclick="select_sq(0,this);">第一题</a></li>
		<li><a  href="javascript:void(0);" onclick="select_sq(1,this);">第二题</a></li>
		<li><a  href="javascript:void(0);" onclick="select_sq(2,this);">第三题</a></li>
		<li><a  href="javascript:void(0);" onclick="select_sq(3,this);">第四题</a></li>
		</ul>
	
		<div id="sq_detail_0" class="sq_detail ">
	<div>　　阅读给定材料，概括当前我国公民科学素质方面存在的主要问题。</div>
<div>　　要求：（1）概括准确全面；（2）语言简练；（3）字数不超过300字。</div>	<textarea id="status_0" class="sq_answer" data-sq-id="1191" onkeydown="count_char('status_0','counter_0');" onkeyup="count_char('status_0','counter_0');"></textarea>
	<p class="right">当前已输入<span id="counter_0">0</span>字</p>
	</div>
		<div id="sq_detail_1" class="sq_detail hide">
	<div>　　阅读给定材料，结合实际，请对当前我国社会“轻科普”的原因进行分析。</div>
<div>　　要求：分析合理；条理清楚，语言简练，字数不超过300字。</div>	<textarea id="status_1" class="sq_answer" data-sq-id="1192" onkeydown="count_char('status_1','counter_1');" onkeyup="count_char('status_1','counter_1');"></textarea>
	<p class="right">当前已输入<span id="counter_1">0</span>字</p>
	</div>
		<div id="sq_detail_2" class="sq_detail hide">
	<div>　　阅读给定材料，结合实际，请就如何解决大学生等受过高等教育的群体的迷信问题，提出自己的建议。</div>
<div>　　要求：建议合理可行，内容全面、条理清楚、语言简练，字数不超过400字。</div>	<textarea id="status_2" class="sq_answer" data-sq-id="1193" onkeydown="count_char('status_2','counter_2');" onkeyup="count_char('status_2','counter_2');"></textarea>
	<p class="right">当前已输入<span id="counter_2">0</span>字</p>
	</div>
		<div id="sq_detail_3" class="sq_detail hide">
	<div>　　根据给定材料，结合首都实际情况和发展定位，围绕“科学知识与科学精神”这一话题，自选角度、自拟题目，写一篇文章。</div>
<div>　　要求：主题明确、内容充实、结构合理，语言流畅，字数控制在800-1000字</div>	<textarea id="status_3" class="sq_answer" data-sq-id="1194" onkeydown="count_char('status_3','counter_3');" onkeyup="count_char('status_3','counter_3');"></textarea>
	<p class="right">当前已输入<span id="counter_3">0</span>字</p>
	</div>
		
	</div>
	</div>          
</div>       
          
          <div class="box_bottom"><img src="${pageContext.request.contextPath }/statictext/img/box_bottom_bg05.jpg" tppabs="http://exam.chinagwy.org/${pageContext.request.contextPath }/statictext/img/box_bottom_bg05.jpg" /></div>
        </div>
         
</div>

<script language="javascript">
$(function(){
    //交卷
    $('#slpaper_submit').click(function(){
        var html = '';
        html += '<div class="commit-exercise-wrap"><div class="commit-exercise">';
        html += '<div class="button-row">';
        html += '<span class="btn btn-paper btn-paper-xlarge submit">确定交卷</span>';
        html += '<br>';
        html += '<span class="btn btn-paper btn-paper-xlarge cancel">谢谢提醒，继续做</span>';
        html += '</div>';
        html += '</div>';
        html += '</div>';
        $.modal(html);

        $('.commit-exercise-wrap .submit').click(function(){
            var url = '?mod=shenlun&act=submit';

            var paper_node = $('.page_content');
            var paper_id = paper_node.data('id');

            if (paper_id <= 0) return;
            
            var sq_answer = $('.sq_answer');
            var answer_data = {};
            sq_answer.each(function(i){
                var sq_id = $(this).data('sq-id');
                answer_data[sq_id] = $(this).val();
            });

            var data = {
                'paper_id' : paper_id,
                'flag'  : 2,
                'answer_data' : answer_data
            };

            $.ajax({
                type : "post",
                url  : url,
                data : data,
                dataType : 'json',
                success : function(r){
                    if (r.code > 0)
                    {
                        alert(r.data.msg);
                    }
                    else{
                        window.location.href = r.data.url;
                    }
                }
            });

        });

        $('.commit-exercise-wrap .cancel').click(function(){
            $.modal.close();
        });
    });
    
    
    //下次继续做
    $('#slpaper_save').click(function(){
        var url = '?mod=shenlun&act=submit';

        var paper_node = $('.page_content');
        var paper_id = paper_node.data('id');

        if (paper_id <= 0) return;
        
        var sq_answer = $('.sq_answer');
        var answer_data = {};
        sq_answer.each(function(i){
            var sq_id = $(this).data('sq-id');
            answer_data[sq_id] = $(this).val();
        });
        

        var data = {
            'paper_id' : paper_id,
            'flag'  : 1,
            'answer_data' : answer_data
        };

        $.ajax({
            type : "post",
            url  : url,
            data : data,
            dataType : 'json',
            success : function(r){
                if (r.code > 0)
                {
                    alert(r.data.msg);
                }
                else{
                    window.location.href = r.data.url;
                }
            }
        });
    });
});
function toggle_zuoda_box(index, obj)
{
    var text_box = $('#text_box_'+index);
    var flag = text_box.data("flag");
    if (flag == 1) {
        text_box.data("flag",0);
        text_box.show();
        $(obj).text("收起↓");
    }
    else{
        text_box.data("flag",1);
        text_box.hide();
        $(obj).text("展开↑");
    }
}

function select_sq(i, obj)
{
    $('http://exam.chinagwy.org/.Expand_in .tab').find("a").removeClass("focus");
    $(obj).addClass("focus");
    $('.sq_detail').hide();
    $('#sq_detail_' + i).show();
}
</script>

<script language="javascript">
function count_char(textareaNamezzjs,spanName){
 document.getElementById(spanName).innerHTML=document.getElementById(textareaNamezzjs).value.length;
}
</script>
</body>
</html>
