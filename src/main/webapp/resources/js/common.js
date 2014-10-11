$(document).ready(function() {
	$(".bookbark_button").click(function() {
		$.ajax({
			type:"GET",							// GET or POST
			url:"/getList.baron",			// URL
			datatype:"xml",						// html, xml, json, jsonp, script, text
			timeout:10000,
			error:function() {					// Ajax error handler
				alert('ajax failed');
			},
			success:function(data, status) {	// Ajax complete handelr
				$('.listArea').empty().append(data).find('div').each(function(index) {
					$(this).click(function(e) {		
						var subjectCode = $(this).find('#subjectCode').val();
						$.ajax({
							type:"GET",							// GET or POST
							url:"/getLineEvaluation.baron",			// URL
							data:"subjectCode=" + subjectCode,
							datatype:"xml",
							timeout:10000,
							error:function() {					// Ajax error handler
								alert('ajax failed');
							},
							success:function(data, status) {
								$('#lineEvaluationArea').empty().append(data).show().css('top',e.pageX).css('left',e.pageY);

							}
						});
					})

				})
			}
		});
	});

	$("#btnSearch").click(function(){
		searchSubject();
	});
	
	$("#searchBox").keydown(function(event) {
		if ( event.which == 13 ) {		//enter 누를 때
			event.preventDefault();
			searchSubject();
		}
	});
	
	//과목선택한거에 따라서 이수구분 추가
	
	
	
});


function searchSubject() {
	$.ajax({
		type:"GET",							// GET or POST
		url:"/getSearchResult.baron",				// 호출할 URL
		data:"searchType=" + $('#selectSearch').val()+"&searchKey=" + $('#searchBox').val(),
		datatype:"xml",						// html, xml, json, jsonp, script, text
		timeout:10000,
		error:function() {					// Ajax error handler
			alert('ajax failed');
		},
		success:function(data, status) {	// Ajax complete handelr
			$('.listArea').empty().append(data).find('div').each(function(index) {
				

			})
		}
	});
}


