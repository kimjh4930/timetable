<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- c�±׸� �� �� ����. -->
<script type="text/javascript" src="/resources/js/common.js"></script>

<c:forEach items="${subjectResultList}" var="subjectResult">
	<div class="list searchResult" >
		${subjectResult.subjectName}${subjectResult.subjectDivide}${subjectResult.grade}${subjectResult.credit}${subjectResult.professorName}${subjectResult.classTime}${subjectResult.classroom}
        <!-- ������� �̼����� �г�/���� ��米�� �ð�/���ǽ� �ϸ�ũ -->	
	</div>
</c:forEach>