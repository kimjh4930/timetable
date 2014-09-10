<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Sample Form</title>
<style type="text/css">

div {
	display: block;
}

html {
	width: 1430px;
}

body {
	background: white;
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	overflow-y: auto;
	word-wrap: break-word;
}

#bodyWrap {
	position: relative;
	margin: 0 auto;
	padding: 0;
	border: 0;
}

.layout_head {
	width: 980px;
	height: 180px;
	margin: 0 auto;
	position: relative;
	padding: 0 0 7px 0;
	background-color: #ECECEC;
}

.layout_body {
	position: relative;
	width: 980px;
	height: 540px;
	margin: 0 auto;
	overflow: hidden;
	padding: 0 0 39px 0;
	background-color: #F7F51E;
	border-bottom: 1px solid #ffffff;
}

.layout_foot {
	margin: 0 auto;
	padding-top: 5px;
	width: 980px;
	height: 107px;
	clear: both;
	position: relative;
	z-index: 40;
	background-color: #ECECEC;
}

.leftArea {
	float: left;
	width: 490px;
	height: 540px;
	overflow: hidden;
	background-color: yellow;
}

.rightArea {
	width: 490px;
	height: 540px;
	overflow: hidden;
	background-color: #BE835C;
}


.dgreeArea {
	height: 75px;
	overflow: hidden;
	background-color: #1EF751;
}


.timeTableArea {
	height: 465px;
	overflow: hidden;
	background-color: #1E7FF7;
}


.searchArea {
	height: 170px;
	overflow: hidden;
	background-color: #006738;
}

.searchResultArea {
	height: 370px;
	overflow: hidden;
	background-color: #DE5B5B;
}

</style>
</head>



<body>

	<div id="bodyWrap">
		<div class="layout_head">header</div>
		<div class="layout_body">
			<div class="leftArea">
				<div class="dgreeArea"></div>
				<div class="timeTableArea"></div>
			</div>
			<div class="rightArea">
				<div class="searchArea"></div>
				<div class="searchResultArea"></div>
			</div>
		</div>
		<div class="layout_foot">foot</div>

	</div>
	
</body>


</html>