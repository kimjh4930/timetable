<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="lineEvaluationLeftArea">${lineEvaluation.subjectName}</div>
<div class="lineEvaluationRightArea">${lineEvaluation.professorName} ������</div>
<div class="lineEvaluationLeftArea">${lineEvaluation.avgStarScore} </div>
<table id="lineEvaluationTable">
	<thead>
	</thead>
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item">
			<tr>
				<td>${item.userId}</td>
				<td>${item.comment}</td>
				<td id=delete> x </td>
				<td>${item.starScore}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<form>
	�α��ξ��̵�
	<input type="text" name="comment" id="input">

</form>	
