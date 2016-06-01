var float_second = 0;

$(function(){
	$('.page_content .hc_tab').find("a").click(function(){
		var chapter_index = $(this).data('chapter-index');
		ajax_chapter(chapter_index, -1);
	});
	
	//时间
	//var float_second = 0;
	var timeout;
	function show_time() {
		float_second++;
		var t_hour = parseInt(float_second / 3600);
		var t_minute = parseInt((float_second % 3600) / 60);
		var t_second = float_second % 60;
		if (t_hour < 10)   t_hour = '0' + t_hour;
		if (t_minute < 10) t_minute = '0' + t_minute;
		if (t_second < 10) t_second = '0' + t_second;
		$('#hc_time').html(t_hour + ':' + t_minute + ':' + t_second);
		timeout = window.setTimeout(show_time,1000);
	}
	show_time();
	
	//暂停
	$('#paper_pause').click(function(){
		var html = '';
		html += '<div class="pause-wrap"><div class="pause">';
		html += '<span class="btn btn-paper btn-paper-large resume fir-wrap">';
        html += '<span class="fir fir-btn-paper-resume"><span class="fir-text">继续做题</span></span>';
		html += '</span>';
		html += '</div>';
		html += '</div></div>';
		$.modal(html);
		clearTimeout(timeout);

		$('.pause-wrap .resume').click(function(){
			$.modal.close();
			show_time();
		});
	});

	//交卷
	$('#paper_submit').click(function(){
		var paper_node = $('.page_content');
		var total_q_num = paper_node.data("q-num");
		var do_q_num = paper_node.data("do-q-num");
		var un_q_num = total_q_num - do_q_num;
		var html = '';
		html += '<div class="commit-exercise-wrap"><div class="commit-exercise">';
		html += '<div class="lead">还剩'+un_q_num+'道题未答完，确定要交卷吗？</div>';
		html += '<div class="button-row">';
		html += '<span class="btn btn-paper btn-paper-xlarge submit">确定交卷</span>';
		html += '<br>';
		html += '<span class="btn btn-paper btn-paper-xlarge cancel">谢谢提醒，继续做</span>';
		html += '</div>';
		html += '</div>';
		html += '</div>';
		$.modal(html);
		clearTimeout(timeout);

		$('.commit-exercise-wrap .submit').click(function(){
			var url = 'http://exam.chinagwy.org/static/js/index.php?mod=exercise&act=submit';

			var paper_node = $('.page_content');
			var paper_id = paper_node.data('id');

			if (paper_id <= 0) return;

			var data = {
				'paper_id' : paper_id,
				'flag'	: 2
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
			show_time();
		});
	});

	//下次继续做
	$('#paper_save').click(function(){
		var url = 'http://exam.chinagwy.org/static/js/index.php?mod=exercise&act=submit';

		var paper_node = $('.page_content');
		var paper_id = paper_node.data('id');

		if (paper_id <= 0) return;

		var data = {
			'paper_id' : paper_id,
			'flag'	: 1
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
					window.location.href = 'http://exam.chinagwy.org/static/js/index.php?mod=exam&act=history';
				}
			}
		});
	});
});

function ajax_chapter(chapter_index, question_index)
{
	var paper_node = $('.page_content');
	var paper_id = paper_node.data('id');

	$('.page_content .hc_tab').find("a").removeClass('focus');
	$('#chapter_' + chapter_index).addClass('focus');

	$('.chapter-desc-list').find(".description").hide();
	$('.chapter-desc-list').find(".description").eq(chapter_index).show();

	var url = 'http://exam.chinagwy.org/static/js/index.php?mod=exercise&act=paper';
	var data = {
		'chapter_index' : chapter_index,
		'paper_id' : paper_id
	};

	$.ajax({
		type : "post",
		url  : url,
		data : data,
		dataType : 'text',
		success : function(r){
			var node = $(r);
			$('#paper_main').html(node);
			if (question_index > -1)
			{
				$.scrollTo($('#question_' + question_index), {duration:200} );
			}
			return false;
		}
	});
}

//答题 单选题
function ajax_answer(question_index, choice)
{
	var paper_node = $('.page_content');
	var paper_id = paper_node.data('id');
	var system_time = paper_node.data('system-time');
	var version = paper_node.data('version');

	var question_node = $('#question_' + question_index);
	var question_id = question_node.data('id');
	if (paper_id <= 0) return;
	if (question_id <= 0) return;

	var answer_data = {};
	answer_data[question_index] = {'question_id':question_id,'question_index':question_index, 'answer':{'choice':choice,'type':201}, 'time' : float_second, 'flag': 0};

	var url = '?mod=exercise&act=answer';
	var data = {
		'paper_id' : paper_id,
		'answer_data' : answer_data,
		'version' : version
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
				$('.page_but').find('a').eq(question_index).addClass("on");
				paper_node.data('version', r.data.version);
				var do_q_num = paper_node.data('do-q-num');
				paper_node.data('do-q-num', do_q_num + 1);
	
				var next_question_index = question_index + 1;
				if($('#question_' + next_question_index).length > 0){
					$.scrollTo($('#question_' + next_question_index), {duration:200,offset:-100} );
				}
				else{
				}
			}
			return false;
		}
	});
}

//答题 多选题
function ajax_multi_answer(question_index)
{
	var paper_node = $('.page_content');
	var paper_id = paper_node.data('id');
	var system_time = paper_node.data('system-time');
	var version = paper_node.data('version');

	var question_node = $('#question_' + question_index);
	var question_id = question_node.data('id');
	if (paper_id <= 0) return;
	if (question_id <= 0) return;

	var choice = [];

	var aa = document.getElementsByName('multi_box_' + question_id);
	for(i in aa) {
		if (aa[i].checked == true)
		{
			choice.push(i);
		}
	}

	var answer_data = {};
	answer_data[question_index] = {'question_id':question_id,'question_index':question_index, 'answer':{'choice':choice,'type':202}, 'time' : float_second, 'flag': 0};

	var url = '?mod=exercise&act=answer';
	var data = {
		'paper_id' : paper_id,
		'answer_data' : answer_data,
		'version' : version
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
				$('.page_but').find('a').eq(question_index).addClass("on");
				paper_node.data('version', r.data.version);
				var do_q_num = paper_node.data('do-q-num');
				paper_node.data('do-q-num', do_q_num + 1);
			}
			return false;
		}
	});
}