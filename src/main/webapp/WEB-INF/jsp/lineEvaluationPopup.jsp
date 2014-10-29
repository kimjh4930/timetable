<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="lineEvaluationLeftArea">${lineEvaluation.subjectName}
	<br> ${lineEvaluation.avgStarScore}
</div>

<div class="lineEvaluationRightArea" id="close"> x </div>


<div class="lineEvaluationRightArea">${lineEvaluation.professorName}
	������ <br> �ٸ� ���� ���亸�� >
</div>



<!-- <div class="lineEvaluationLeftArea"> </div> -->
<table id="lineEvaluationTable">
	<thead>
	</thead>
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item">
			<tr>
				<td>${item.userId}</td>
				<td>${item.comment}</td>
				<td id=delete index="${item.indexNo}">x</td>
				<td>${item.starScore}</td>
			</tr>
		</c:forEach>
		<tr id="other_evaluation">
			<td>�ٸ� ��� �� ����</td>
		</tr>

	</tbody>



</table>
<form id="evaluationForm">
	�α��ξ��̵� <input type="text" name="comment" id="input"
		placeholder="����� �Է��ϼ���">

</form>
