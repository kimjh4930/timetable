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




});



