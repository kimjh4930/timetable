<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/jquery.rating.css" />
	<script type="text/javascript" src="/resources/js/jquery/jquery.MetaData.js"></script>
	<script type="text/javascript" src="/resources/js/jquery/jquery.rating.pack.js"></script>
</head>
	

<table class="detailLineEvaluationTable">
	<tbody>
		<c:forEach items="${lineEvaluation.itemList}" var="item" varStatus="status"  >
		<thead>	
			<tr>
				<td rowspan="2" style="width:90px; height:50px;" class="personalScore" personalScore="${item.starScore}" > 
					<c:forEach begin="1" end="10">
						<input name="detail_saved_star${status.index}" type="radio" class="star {split:2} person " /> 
					</c:forEach>
				</td>
				<td style="width:330px; height:30px; margin-bottom:0px;" >${item.comment}</td> 	 	
				<td id="deleteDetail" index="${item.indexNo}">x</td>
			</tr>
			<tr>
				<td style="width:330px; height:20px; font-size:11px; font-weight:normal; color:gray; margin-bottom:5px;" >
				${item.userId} | <fmt:formatDate value="${item.date}" pattern="yyyy.MM.dd aa hh:mm"/> </td>
				<td></td>
			</tr>
		</thead>	
		</c:forEach>
		
	</tbody>

</table>


<form id="detailEvaluationForm" >
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

			<input type="text" name="commentDetail"  placeholder="댓글을 입력하세요">

</form>



