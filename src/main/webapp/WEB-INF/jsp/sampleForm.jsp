<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- c태그를 쓸 수 있음. -->
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Sample Form</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
	<script type="text/javascript" src="/resources/js/jquery/jquery-1.11.1.js"></script>
	<script type="text/javascript" src="/resources/js/common.js"></script>
</head>
<body>
	<header id="main_header">
		<h3>header</h3>
	</header>
	<div id="content">
		<section id="left_section">
			<article class="creditArea">
				<select class="ordinalTable">
					<option value="fitst">1</option>
					<option value="second">2</option>
					<option value="third">3</option>
				</select> 번째 시간표
				<button type="button" class="reset_bt" name="reset"></button>
				<button type="button" class="saveexel_bt" name="SaveExcel"></button>
				<br> 총 0학점 전공 0학점 교양 0학점 기타 0학점
			</article>
			<article class="timeTableArea">
				<div class="LeftTableFrame">
					<table class="timeBoardTable">
						<tr>
							<th>&nbsp;</th>
						</tr>
						<tr>
							<td>0교시 8:30
								<div class="daytimeMark">주</div>
							</td>
						</tr>
						<tr>
							<td>1교시 9:30</td>
						</tr>
						<tr>
							<td>2교시 10:30</td>
						</tr>
						<tr>
							<td>3교시 11:30</td>
						</tr>
						<tr>
							<td>4교시 12:30</td>
						</tr>
						<tr>
							<td>5교시 1:30</td>
						</tr>
						<tr>
							<td>6교시 2:30</td>
						</tr>
						<tr>
							<td>7교시 3:30</td>
						</tr>
						<tr>
							<td>8교시 4:30</td>
						</tr>
						<tr>
							<td>9교시 5:30</td>
						</tr>
						<tr>
							<td>1교시 6:00
								<div class="daytimeMark">야</div>
							</td>

						</tr>
						<tr>
							<td>2교시 6:55</td>
						</tr>
						<tr>
							<td>3교시 7:50</td>
						</tr>
						<tr>
							<td>4교시 8:45</td>
						</tr>
						<tr>
							<td>5교시 9:40</td>
						</tr>
						<tr>
							<td>6교시 10:35</td>
						</tr>

					</table>
				</div>
				<div class="RightTableFrame">
					<table class="myTable">
						<tr>
							<th>월</th>
							<th>화</th>
							<th>수</th>
							<th>목</th>
							<th>금</th>
						</tr>
						<tr>
							<td id="cell0_0">&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td id="cell1_0">&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</div>
			</article>
		</section>
		<section id="right_section">
			<article class="searchArea">
				캠퍼스구분 
				<select class="CampusSort">
					<option value="songdo">송도</option>
					<option value="jemulpo">제물포</option>
				</select>
				
				학기선택 
				<select class="semesterSelect">
					<option value="semeste">2014년2학기</option>
				</select><br>
				
				학과선택
				<select class="department" id="departmentList">
			        <option value="selectDefault" id="selectDefault" name="selectDefault">전공/교양 선택</option>
			        <option value="subjectAll" id="subjectAll" name="subjectAll">전체</option>
			        <option value="liberalArts" id="liberalArts" name="liberalArts">교양</option>
			        <option value="teachingCourse" id="teachingCourse" name="teachingCourse">교직</option>
			        <option value="generalCourse" id="generalCourse" name="generalCourse">일반선택</option>
			        <option value="militaryCourse" id="militaryCourse" name="militaryCourse">군사학</option>
				    <c:forEach items="${departmentList}" var="department">
				        <option value="department" name="department" id="department"> ${department} </option>
				    </c:forEach>
			    </select>
				
				이수구분
				<select class="section" id="completionDivision">
					<option value="section">선택</option>
				</select>
				
				요일
				<select class="day">
					<option value="monday">월</option>
					<option value="tuesday ">화</option>
					<option value="wednesday">수</option>
					<option value="thursday">목</option>
					<option value="friday">금</option>
				</select><br>
				<form>
					학년 
					<input type="checkbox" id="ch1" class="css-checkbox" name="year" value="1" checked="checked">
					   <label for="ch1"	class="css-label">1</label>
					   <input type="checkbox" id="ch2"	class="css-checkbox" name="year" value="2" checked="checked">
					   <label for="ch2" class="css-label">2</label>
					   <input type="checkbox" id="ch3" class="css-checkbox" name="year" value="3" checked="checked">
					   <label for="ch3" class="css-label">3</label>
					<input type="checkbox" id="ch4" class="css-checkbox" name="year"
						value="4" checked="checked"> <label for="ch4"
						class="css-label">4</label>
					<input type="text" name="searchBox" id="searchBox">
					<select class="searchSelect" style="float: right;" id="selectSearch">
						<option value="subject">과목명</option>
						<option value="professor">교수명</option>
					</select> 
					<button type="button" class="search_bt" name="검색" id="btnSearch">검색</button>
				</form>
				<div class="line"></div>
				<br>
				<button type="button" class="bookbark_button" name="bookmark"
					style="float: right;"></button>
			</article>
			<article class="subjectResultArea">
				<div class="title1">교과목명</div>
				<div class="title2">이수구분 학년/학점 담당교수 시간/강의실 북마크</div>
				<div class="listArea"></div>
			</article>
		</section>
	</div>
	<footer id="main_footer">
		<h3>footer</h3>
	</footer>
	<div id="lineEvaluationArea"></div>
</body>


</html>