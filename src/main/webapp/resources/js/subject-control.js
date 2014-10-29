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
						deleteComment(current,subjectCode);
						addComment(current,subjectCode); // 댓글 입력 이벤트
						current.find($('#close')).click(function(){//댓글창 닫기 이벤트
							current.empty().css('display','none');
						});

					}
				})

			}
		},400)
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

//댓글 입력 이벤트
function addComment(commentData,subjectCode) {
	$(commentData).find('form').submit(function(){ //엔터 했을 경우

		var comment=$(input).val();

		$.ajax({
			type:"GET",
			url:"/addLineEvaluation.baron",
			data:"comment=" + comment+"&subjectCode="+subjectCode,
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:
				function(data, status) {
				var current=$('#lineEvaluationArea').empty().append(data).show();

				addComment(current,subjectCode); 
				deleteComment(current,subjectCode);

			}
		});
		return false;
	});
}

//댓글 삭제 이벤트
function deleteComment(commentData,subjectCode){
	$(commentData).find('td#delete').each(function(index){
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
					addComment(current,subjectCode); 
					deleteComment(current,subjectCode);

				}
			});

		});
	});
}