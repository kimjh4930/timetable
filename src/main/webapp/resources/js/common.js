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
					$(this).mousedown(function(e) {
						if(e.which=='3'){
							var a=$(this).find('#subjectCode').val();
							alert(a);
						}
					})
				})
			}
		});
	});
	

	
	
});

