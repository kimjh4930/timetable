<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- c�±׸� �� �� ����. -->
<!-- <div class="list" >�ĳ�
	<input type="hidden" value="0000558001" name="subjectCode" id="subjectCode">
</div>
<div class="list" >����
	<input type="hidden" value="0000558002" name="subjectCode" id="subjectCode">
</div>
<div class="list" >asd
	<input type="hidden" value="0000558002" name="subjectCode" id="subjectCode">
</div> -->

<c:forEach items="${subjectResultList}" var="subjectResult">
	<div class="list" >
		${subjectResult.subjectName}${subjectResult.subjectName}${subjectResult.subjectName}
	</div>
</c:forEach>

