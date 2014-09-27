<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="lineEvaluationLeftArea">${lineEvaluation.subjectName}</div>
<div class="lineEvaluationRightArea">${lineEvaluation.professorName} 교수님</div>
<div class="lineEvaluationLeftArea">${lineEvaluation.starScore} </div>
<table id="lineEvaluationTable">
	<thead>
	</thead>
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item">
			<tr>
				<td>${item.id}</td>
				<td>${item.coment}</td>
				<td>${item.starScore}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<form action="get">
	로그인아이디
	<input type="text" name="comemt">
</form>	
