<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/jquery.rating.css" />
	<script type="text/javascript" src="/resources/js/jquery/jquery.MetaData.js"></script>
	<script type="text/javascript" src="/resources/js/jquery/jquery.rating.pack.js"></script>

</head>
<div class="lineEvaluationLeftArea">
	${lineEvaluation.subjectName}
	<br> 
	<div id="main_star_area">
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" />
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" checked="checked" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" />
	 	${lineEvaluation.avgStarScore}
	</div>
</div>

<div class="lineEvaluationRightArea" id="close">x</div>


<div class="lineEvaluationRightArea">${lineEvaluation.professorName}교수님 
	<br> 다른 과목 리뷰보기 >
</div>




<table id="lineEvaluationTable">
	<thead>
	</thead>
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item" >
			<tr>
				<td rowspan="2" style="width:100px; height:45px;" >  ${item.starScore}
				<!--<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" checked="checked" /> 
					<input name="saved_star" type="radio" class="star {split:2}" />
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" /> 
					<input name="saved_star" type="radio" class="star {split:2}" />	  -->				
				</td>
				<td style="width:200px ;height:30px " >${item.comment}</td>
				<td id=delete index="${item.indexNo}">x</td>
				
		</tr>
			<tr  style="width:200px ;height:15px; font-size:11px; font-weight:normal; color:gray;">
			<td >${item.userId} | 14.05.24 오후 9:00</td>
		</tr>
			
		</c:forEach>
		<tr id="other_evaluation">
			<td >다른 댓글 더 보기</td>
		</tr>

	</tbody>



</table>
<form id="evaluationForm">
	
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" />
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" /> 
	<input name="personal_star" type="radio" class="star {split:2}" checked="checked" />

	<input type="text" name="comment" id="input"
		placeholder="댓글을 입력하세요">

</form>
