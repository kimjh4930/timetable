<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/jquery.rating.css" />
	<script type="text/javascript" src="/resources/js/jquery/jquery.MetaData.js"></script>
	<script type="text/javascript" src="/resources/js/jquery/jquery.rating.pack.js"></script>

</head>
<div class="lineEvaluationLeftArea">
	${lineEvaluation.subjectName}
	<br> 
	<div id="main_star_area" mainStarScore="${lineEvaluation.avgStarScore}" >
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" />
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
		<input name="main_star" type="radio" class="star {split:2}" /> 
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
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item" varStatus="status" >
		<thead>	
			<tr>
				<td rowspan="2" style="width:100px; height:50px;" id="personalScore" personalScore=${item.starScore} > <%--  ${item.starScore} --%>
					<c:forEach begin="1" end="10">
						<input name="saved_star${status.index}" type="radio" class="star {split:2} " /> 
					</c:forEach>
				</td>
				<td style="width:200px; height:30px; margin-bottom:0px;" >${item.comment}</td>
				<td id=delete index="${item.indexNo}">x</td>
			</tr>
			<tr>
				<td style="width:150px; height:20px; font-size:11px; font-weight:normal; color:gray; margin-bottom:5px;" >
				${item.userId} | <fmt:formatDate value="${item.date}" pattern="yyyy. MM. dd hh:mm"/> </td>
				<td></td>
			</tr>
		</thead>	
		</c:forEach>
		<tr id="other_evaluation">
			<td  style="height:30px;">다른 댓글 더 보기</td>
		</tr>
		
	</tbody>

</table>


<form id="evaluationForm"  style=" height:30px;  margin-top:15px; margin-left: 20px">
	<input name="personal_star" type="radio"  value="1" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="2" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="3" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="4" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="5" class="star {split:2}" />
	<input name="personal_star" type="radio"  value="6" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="7" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="8" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="9" class="star {split:2}" /> 
	<input name="personal_star" type="radio"  value="10" class="star {split:2}" checked="checked"/>

	<input type="text" name="comment" id="input"
		placeholder="댓글을 입력하세요">

</form>
