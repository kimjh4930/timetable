//list에서 과목 선택 이벤트 
function setEventSubject(subject) {
	var dbclick=false; 
	$(subject).click(function(e) {    
		setTimeout(function(){
			if(dbclick ==false){
				var subjectCode = $(subject).attr('subjectCode');

				$.ajax({
					type:"GET",
					url:"/getLineEvaluation.baron",
					data:"subjectCode=" + subjectCode,
					datatype:"xml",
					error:function() {
						alert('ajax failed');
					},
					success:function(data, status) {//해당 과목 댓글창 출력
						var current=$('#lineEvaluationArea').empty().append(data).show().css('top',e.pageY).css('left',e.pageX);

						reset(current,subjectCode);

					}
				})

			}
		},150)
	}).dblclick(function() {
		alert("double");
		dbclick = true;
		setTimeout(function(){
			dbclick = false
			var subjectCode = $(this).find("#subjectCode").val();
			$.ajax({
				type:"GET",
				url:"/registerSubject.baron",
				data:"subjectCode=" + subjectCode + "&timetableNo=" + 1,
				datatype:"xml",
				error:function() {
					alert('ajax failed');
				},
				success:function(data, status) {
					$("#cell0_0").empty().append(subjectCode);
				}
			});
		},500)
	});
}




//해당과목 메인별점 셋팅
function setMainStarScore(current){
	var mainStarScore = $(current).find('#main_star_area').attr('mainStarScore');
	$('input:hidden[name=main_star]').rating('select',parseInt(mainStarScore)-1).rating('readOnly',true); //고정별점

}


//각각 별점 셋팅
function setPersonalStarScore(current){

	$(current).find('.personalScore').each(function(index){
		var personalScore= $(this).attr('personalScore');
		$(this).find($('input.star.person')).rating('select',parseInt(personalScore)-1).rating('readOnly',true); 
	})
	//고정별점
}



//새 댓글 등록 이벤트
function addComment(current,subjectCode) {
	$(current).find('form').submit(function(){ //엔터 했을 경우	
		var comment=$('input:text[name=comment]').val();
		var star_Score=$(current).find('input:hidden[name=personal_star]:checked').val();

		$.ajax({
			type:"GET",
			url:"/addLineEvaluation.baron",
			data:"comment=" + comment+"&subjectCode="+subjectCode+"&star_Score="+star_Score ,
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:
				function(data, status) {
				var current=$('#lineEvaluationArea').empty().append(data).show();
				reset(current,subjectCode);
			}
		});
		return false;
	});
}


//댓글 삭제 이벤트
function deleteComment(current,subjectCode){
	$(current).find('td#delete').each(function(index){
		$(this).click(function(){
			var indexNo=$(this).attr('index');		

			$.ajax({
				type:"GET",
				url:"/deleteLineEvaluation.baron",
				data:"subjectCode="+subjectCode+"&indexNo="+indexNo,
				datatype:"xml",
				error:function() {
					alert('ajax failed');
				},
				success:
					function(data, status) {
					var current=$('#lineEvaluationArea').empty().append(data).show();

					reset(current,subjectCode);
				}
			});

		});
	});
}


//댓글창 닫기 이벤트
function closeEvaluation(current){
	$(current).find($('#close')).click(function(){
		$(current).empty().css('display','none');
	});
}




//더보기 이벤트
function lineEvaluationAreaDetail(current,subjectCode){
	if(	$(current).find('td#delete').attr('index')==null){
		$(current).find('tr#other_evaluation').html("입력 된 한줄평가가 없습니다.").css('line-height','150px').css('text-align','center');
	}
	else{
		$(current).find('tr#other_evaluation').click(function(){
			$.ajax({
				type:"GET",
				url:"/detailLineEvaluationArea.baron",
				data:"subjectCode=" + subjectCode,
				datatype:"xml",
				error:function() {
					alert('ajax failed');
				},
				success:function(data, status) {
					$('#bodyDisabled').show();
					var current=$('#lineEvaluationAreaDetail').show().find($('#lineEvaluationAreaDetailScroll')).empty().append(data).show();	
					resetDetail(current,subjectCode);
				
					

				}
			});
		})
	}
}


//더보기창에서 새 댓글 등록 이벤트
function addCommentDetail(current,subjectCode) {
	$(current).find('form').submit(function(){ //엔터 했을 경우	
		var comment=$('input:text[name=commentDetail]').val();
		var star_Score=$(current).find('input:hidden[name=personal_star]:checked').val();

		$.ajax({
			type:"GET",
			url:"/addLineEvaluationDetail.baron",
			data:"comment=" + comment+"&subjectCode="+subjectCode+"&star_Score="+star_Score ,
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:
				function(data, status) {
				var current=$('#lineEvaluationAreaDetail').show().find($('#lineEvaluationAreaDetailScroll')).empty().append(data).show();	
				resetDetail(current,subjectCode);
				$.ajax({
					type:"GET",
					url:"/getLineEvaluation.baron",
					data:"subjectCode=" + subjectCode,
					datatype:"xml",
					error:function() {
						alert('ajax failed');
					},
					success:function(data, status) {//해당 과목 댓글창 출력
						current2=$('#lineEvaluationArea').empty().append(data).show();
						reset(current2,subjectCode);
						
					}
				})
			}
		});
		return false;
	});
}


//더보기창에서 댓글 삭제 이벤트
function deleteCommentDetail(current,subjectCode){
	$(current).find('td#deleteDetail').each(function(index){
		$(this).click(function(){
			var indexNo=$(this).attr('index');	

			$.ajax({
				type:"GET",
				url:"/deleteLineEvaluationDetail.baron",
				data:"subjectCode="+subjectCode+"&indexNo="+indexNo,
				datatype:"xml",
				error:function() {
					alert('ajax failed');
				},
				success:
					function(data, status) {
					var current=$('#lineEvaluationAreaDetail').show().find($('#lineEvaluationAreaDetailScroll')).empty().append(data).show();	
					$.ajax({
						type:"GET",
						url:"/getLineEvaluation.baron",
						data:"subjectCode=" + subjectCode,
						datatype:"xml",
						error:function() {
							alert('ajax failed');
						},
						success:function(data, status) {//해당 과목 댓글창 출력
							current2=$('#lineEvaluationArea').empty().append(data).show();
							reset(current2,subjectCode);
						}
					})

					resetDetail(current,subjectCode);
				}
			});

		});
	});
}


//더보기댓글창 닫기 이벤트
function closeEvaluationDetail(current){
		$('#closeLineEvaluationAreaDetail').click(function(){
		$(current).css('display','none');
		$('#lineEvaluationAreaDetail').css('display','none');
		$('#bodyDisabled').css('display','none');
	});
}


//더보기댓글창 무한스크롤 이벤트
function infiniteScroll(current,subjectCode){
	$(current).scroll(function() {
		var scrollHeight = $(current).scrollTop()+$(current).height();
		var documentHeight = $(current).find($('#detailLineEvaluationTable')).height();
		if (scrollHeight == documentHeight) {
			alert("로딩");
				current2=$(current).append($("<h1>무한 스크롤  </h1>"));
				resetDetail(current2,subjectCode);
		}
	});

}



//이벤트 리셋
function reset(current,subjectCode){
	setMainStarScore(current);
	setPersonalStarScore(current);
	addComment(current,subjectCode); 
	deleteComment(current,subjectCode);
	closeEvaluation(current);
	lineEvaluationAreaDetail(current,subjectCode);
}


//더보기이벤트 리셋
function resetDetail(current,subjectCode){
	setPersonalStarScore(current);
	addCommentDetail(current,subjectCode);
	deleteCommentDetail(current,subjectCode);
	closeEvaluationDetail(current);
	infiniteScroll(current,subjectCode);
	
}

