<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap설정 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<!-- 나래 css -->
<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
<!-- jquery -->
<script type="text/javascript" src="/resources/js/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript" src="/resources/js/subject-control.js"></script>

<title>Insert title here</title>
</head>
<body>
    <header id="main_header">
        <h3>header</h3>
    </header>
    <div id="content">
        <!-- board Title -->
        <div class="row" id="board_title">
            <div class="col-xs-6 col-sm-1"><p class="label_title">번호</p></div>
            <div class="col-xs-6 col-sm-1"><p class="label_title">분류</p></div>
            <div class="col-xs-6 col-sm-4"><p class="label_title">강의명</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_title">교수명</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_title">등록일</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_title">평점</p></div>
        </div>
        <!-- board 내용 -->
        <div class="row" id="board_content">
            <div class="col-xs-6 col-sm-1"><p class="label_content">1</p></div>
            <div class="col-xs-6 col-sm-1"><p class="label_content">교양</p></div>
            <div class="col-xs-6 col-sm-4"><p class="label_content">인간과우주</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">정연철</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">2014-09-12</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">★★★★★</p></div>
        </div>
        <div class="row" id="board_content">
            <div class="col-xs-6 col-sm-1"><p class="label_content">2</p></div>
            <div class="col-xs-6 col-sm-1"><p class="label_content">교양</p></div>
            <div class="col-xs-6 col-sm-4"><p class="label_content">인간과우주</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">정연철</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">2014-09-12</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">★★★★★</p></div>
        </div>
        <div class="row" id="board_content">
            <div class="col-xs-6 col-sm-1"><p class="label_content">3</p></div>
            <div class="col-xs-6 col-sm-1"><p class="label_content">교양</p></div>
            <div class="col-xs-6 col-sm-4"><p class="label_content">인간과우주</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">정연철</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">2014-09-12</p></div>
            <div class="col-xs-6 col-sm-2"><p class="label_content">★★★★★</p></div>
        </div>
        <!-- board 하단 -->
        <div style="margin-top: 20px">
	        <div class="btn-group" role="group" >
	            <button type="button" class="btn btn-default">첫페이지</button>
	        </div>
	        <div class="btn-group" role="group" >
			    <button type="button" class="btn btn-default">1</button>
			    <button type="button" class="btn btn-default">2</button>
			    <button type="button" class="btn btn-default">3</button>
			    <button type="button" class="btn btn-default">4</button>
	            <button type="button" class="btn btn-default">5</button>
	            <button type="button" class="btn btn-default">6</button>
	            <button type="button" class="btn btn-default">7</button>
	            <button type="button" class="btn btn-default">8</button>
	            <button type="button" class="btn btn-default">9</button>
	            <button type="button" class="btn btn-default">10</button>
			</div>
			<div class="btn-group" role="group" >
	            <button type="button" class="btn btn-default">끝페이지</button>
	        </div>
        </div>
        <div style="margin-top: 20px">
	        <div class="row" id="board_bottom">
		        <div class="col-xs-6 col-sm-1" style="padding-top : 5px ">
	                <select class="selectType" >
	                    <option value="subject">과목명</option>
	                    <option value="professor">교수명</option>
	                </select>
	            </div>
	            <div class="col-xs-6 col-sm-2">
	                <div class="form-group">
	                    <input type="text" class="form-control" id="exampleInputEmail1">
	                </div>
	            </div>
	            <div class="col-xs-6 col-sm-1">
	                <button type="button" class="btn btn-primary">검색</button>
	            </div>
	            <div class="col-xs-6 col-sm-3"></div>
	            <div class="col-xs-6 col-sm-3"></div>
	            <div class="col-xs-6 col-sm-2">
	                <button type="button" class="btn btn-primary" style="float: right">글쓰기</button>
	            </div>
	        </div>
        </div>
    </div>
    <footer id="main_footer">
        <h3>footer</h3>
    </footer>

</body>
</html>