<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- c태그를 쓸 수 있음. -->
<!DOCTYPE html>
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