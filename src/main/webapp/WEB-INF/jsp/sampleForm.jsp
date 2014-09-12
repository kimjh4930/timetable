<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Sample Form</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
</head>

<header>header</header>

<body>
	<div class="layout_body">
		<div class="leftArea">
			<div class="creditArea">
				<select class="ordinalTable">
					<option value="fitst">1</option>
					<option value="second">2</option>
					<option value="third">3</option>
				</select> 번째 시간표
				<button type="button" name="reset">초기화</button>
				<button type="button" name="SaveExcel">엑셀로 저장</button>
				<br> 총 0학점 전공 0학점 교양 0학점 기타 0학점
			</div>
			<div class="timeTableArea">
				<div class="timeTableFrame">
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
						<div class="timeBoard"></div>
					</div>
					<div class="RightTableFrame">
						<table class="myTable">
							<tr>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
								<th>&nbsp;</th>
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
						<div class="dayText">월 화 수 목 금</div>
						<div class="whiteBoard"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="rightArea">
			<div class="searchArea">
				캠퍼스구분 <select class="CampusSort">
					<option value="songdo">송도</option>
					<option value="jemulpo">제물포</option>
				</select> 학기선택 <select class="semesterSelect">
					<option value="semeste">2014년2학기</option>
				</select><br> 이수구분<select class="section">
					<option value="section">선택</option>
				</select> <select class="major">
					<option value="major">선택</option>
				</select> 요일<select class="day">
					<option value="monday">월</option>
					<option value="tuesday ">화</option>
					<option value="wednesday">수</option>
					<option value="thursday">목</option>
					<option value="friday">금</option>
				</select><br>
				<form>
					학년 <input type="checkbox" name="year" value="1" checked="checked">1
					<input type="checkbox" name="year" value="2" checked="checked">2
					<input type="checkbox" name="year" value="3" checked="checked">3
					<input type="checkbox" name="year" value="4" checked="checked">4
					<select class="searchSelect">
						<option value="search">검색</option>
					</select> <input type="text" name="searchBox">
				</form>
				<br> <br>
				<button type="button" name="bookmark">북마크 보기</button>
			</div>
			<div class="subjectResultArea">
				<div class="title1">교과목명</div>
				<div class="title2">이수구분 학년/학점 담당교수 시간/강의실 북마크</div>
			</div>
		</div>
	</div>
</body>

<footer>foot</footer>

</html>