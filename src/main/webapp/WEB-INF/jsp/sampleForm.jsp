<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Sample Form</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript" src="/resources/jquery/jquery-1.11.1.js"></script>

<script src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
<script src="/resources/js/ajax.js"></script>

<!--  
<script>

	$(function() {
		$('.bookbark_button').on('click',function() {
			$('<div></div>').html('���').css({
				backgroundColor : 'white'
			}).css({
				width : '480'
			}).css({
				height : '80'
			}).appendTo('.subjectResultArea');
		});
	});
</script>
-->
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
				</select> ��° �ð�ǥ
				<button type="button" class="reset_bt" name="reset"></button>
				<button type="button" class="saveexel_bt" name="SaveExcel"></button>
				<br> �� 0���� ���� 0���� ���� 0���� ��Ÿ 0����
			</div>
			<div class="timeTableArea">
				<div class="timeTableFrame">
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
						<div class="timeBoard"></div>
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
						<div class="whiteBoard"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="rightArea">
			<div class="searchArea">
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
					�г� <input type="checkbox" id="ch1" class="css-checkbox" name="year"
						value="1" checked="checked"> <label for="ch1"
						class="css-label">1</label> <input type="checkbox" id="ch2"
						class="css-checkbox" name="year" value="2" checked="checked">
					<label for="ch2" class="css-label">2</label> <input type="checkbox"
						id="ch3" class="css-checkbox" name="year" value="3"
						checked="checked"> <label for="ch3" class="css-label">3</label>
					<input type="checkbox" id="ch4" class="css-checkbox" name="year"
						value="4" checked="checked"> <label for="ch4"
						class="css-label">4</label> <input type="text" name="searchBox"
						style="float: right;"> <select class="searchSelect"
						style="float: right;">
						<option value="search">�˻�</option>
					</select>
				</form>
				<div class="line"></div>
				<br>
				<button type="button" class="bookbark_button" name="bookmark"
					style="float: right;"></button>
			</div>
			<div class="subjectResultArea">
				<div class="title1">�������</div>
				<div class="title2">�̼����� �г�/���� ��米�� �ð�/���ǽ� �ϸ�ũ</div>
				<div class="listArea"></div>
			</div>
		</div>
	</div>
</body>

<footer>foot</footer>

</html>