<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- c�±׸� �� �� ����. -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
				</select> ��° �ð�ǥ
				<button type="button" class="reset_bt" name="reset"></button>
				<button type="button" class="saveexel_bt" name="SaveExcel"></button>
				<br> �� 0���� ���� 0���� ���� 0���� ��Ÿ 0����
			</article>
			<article class="timeTableArea">
				<div class="LeftTableFrame">
					<table class="timeBoardTable">
						<tr>
							<th>&nbsp;</th>
						</tr>
						<tr>
							<td>0���� 8:30
								<div class="daytimeMark">��</div>
							</td>
						</tr>
						<tr>
							<td>1���� 9:30</td>
						</tr>
						<tr>
							<td>2���� 10:30</td>
						</tr>
						<tr>
							<td>3���� 11:30</td>
						</tr>
						<tr>
							<td>4���� 12:30</td>
						</tr>
						<tr>
							<td>5���� 1:30</td>
						</tr>
						<tr>
							<td>6���� 2:30</td>
						</tr>
						<tr>
							<td>7���� 3:30</td>
						</tr>
						<tr>
							<td>8���� 4:30</td>
						</tr>
						<tr>
							<td>9���� 5:30</td>
						</tr>
						<tr>
							<td>1���� 6:00
								<div class="daytimeMark">��</div>
							</td>

						</tr>
						<tr>
							<td>2���� 6:55</td>
						</tr>
						<tr>
							<td>3���� 7:50</td>
						</tr>
						<tr>
							<td>4���� 8:45</td>
						</tr>
						<tr>
							<td>5���� 9:40</td>
						</tr>
						<tr>
							<td>6���� 10:35</td>
						</tr>

					</table>
				</div>
				<div class="RightTableFrame">
					<table class="myTable">
						<tr>
							<th>��</th>
							<th>ȭ</th>
							<th>��</th>
							<th>��</th>
							<th>��</th>
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
				ķ�۽����� <select class="CampusSort">
					<option value="songdo">�۵�</option>
					<option value="jemulpo">������</option>
				</select> �б⼱�� <select class="semesterSelect">
					<option value="semeste">2014��2�б�</option>
				</select><br> �̼�����<select class="section">
					<option value="section">����</option>
				</select> <select class="major">
					<option value="major">����</option>
				</select> ����<select class="day">
					<option value="monday">��</option>
					<option value="tuesday ">ȭ</option>
					<option value="wednesday">��</option>
					<option value="thursday">��</option>
					<option value="friday">��</option>
				</select><br>
				<form>
					�г� <input type="checkbox" id="ch1" class="css-checkbox" name="year" value="1" checked="checked"> <label for="ch1"
						class="css-label">1</label> <input type="checkbox" id="ch2"
						class="css-checkbox" name="year" value="2" checked="checked">
					<label for="ch2" class="css-label">2</label> <input type="checkbox"
						id="ch3" class="css-checkbox" name="year" value="3"
						checked="checked"> <label for="ch3" class="css-label">3</label>
					<input type="checkbox" id="ch4" class="css-checkbox" name="year"
						value="4" checked="checked"> <label for="ch4"
						class="css-label">4</label>
					<input type="text" name="searchBox" id="searchBox">
					<select class="searchSelect" style="float: right;" id="selectSearch">
						<option value="subject">�����</option>
						<option value="professor">������</option>
					</select> 
					<button type="button" class="search_bt" name="�˻�" id="btnSearch">�˻�</button>
				</form>
				<div class="line"></div>
				<br>
				<button type="button" class="bookbark_button" name="bookmark"
					style="float: right;"></button>
			</article>
			<article class="subjectResultArea">
				<div class="title1">�������</div>
				<div class="title2">�̼����� �г�/���� ��米�� �ð�/���ǽ� �ϸ�ũ</div>
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