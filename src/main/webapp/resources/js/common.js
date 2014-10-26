$(document).ready(function() {

	// 북마크버튼에 이벤트 연결
	$(".bookbark_button").click(function() {
		$.ajax({
			type:"GET",
			url:"/getList.baron",
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:function(data, status) {
				$('.listArea').empty().append(data).find('div').each(function(index) { //리스트뿌리기
					setEventSubject($(this)); //각각의 리스트
				})
			}
		});
	});

	// 검색버튼에 이벤트 연결
	$("#btnSearch").click(function(){
		$.ajax({
			type:"GET",
			url:"/getSearchResult.baron",
			data:"searchType=" + $('#selectSearch').val()+"&searchKey=" + $('#searchBox').val(),
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:function(data, status) {
				$('.listArea').empty().append(data).find('div').each(function(index) {
					setEventSubject($(this));
				})
			}
		});
	});
});

/**
 * 조회된 과목리스트에 이벤트를 연결시킨다.
 * @param subject : 과목
 */
function setEventSubject(subject) {
	$(subject).on({
		click: function(e) {		
			var subjectCode = $(this).find('#subjectCode').val();
			$.ajax({
				type:"GET",
				url:"/getLineEvaluation.baron",
				data:"subjectCode=" + subjectCode,
				datatype:"xml",
				error:function() {
					alert('ajax failed');
				},
				success:function(data, status) {
					var current=$('#lineEvaluationArea').empty().append(data).show().css('top',e.pageY).css('left',e.pageX).find('form');
						 addComment(current);
				}
			})
		}, 
		dblclick: function() {
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
		}
	});
	
	//각 삭제
	$(subject + '#delete').click( function(){alert("delete");});
	
	
}

//댓글 입력 이벤트
function addComment(commentData) {
	$(commentData).submit(function(){ //엔터 했을 경우
		
		var comment=$(input).val();

		$.ajax({
			type:"GET",
			url:"/addLineEvaluation.baron",
			data:"comment=" + comment,
			datatype:"xml",
			error:function() {
				alert('ajax failed');
			},
			success:
				function(data, status) {
				var current=$('#lineEvaluationArea').empty().append(data).show().find('form');
					
				addComment(current); 
				
			}
		});
		return false;
	});
}


