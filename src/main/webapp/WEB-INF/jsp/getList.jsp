<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- c�±׸� �� �� ����. -->
<!-- <div class="list" >�ĳ�
	<input type="hidden" value="0000558001" name="subjectCode" id="subjectCode">
</div>
<div class="list" >asd
	<input type="hidden" value="0000558002" name="subjectCode" id="subjectCode">
</div> -->
<div class="list searchResult" >����
    <input type="hidden" value="0000558002" name="subjectCode" id="subjectCode">
</div>

<c:forEach items="${subjectResultList}" var="subjectResult">
	<div class="list searchResult" >
		${subjectResult.subjectName}${subjectResult.subjectName}${subjectResult.subjectName}
	</div>
</c:forEach>

<script>
$(".searchResult").each(function() {
	$(this).click(function() {
		var subjectCode = $(this).find("#subjectCode").val();
		$.ajax({
            type:"GET",                         // GET or POST
            url:"/registerSubject.baron",               // ȣ���� URL
            data:"subjectCode=" + subjectCode,
            datatype:"xml",                     // html, xml, json, jsonp, script, text
            error:function() {                  // Ajax error handler
                alert('ajax failed');
            },
            success:function(data, status) {    // Ajax complete handelr
                $("#cell0_0").empty().append(subjectCode);
            }
        });
	});
});
</script>