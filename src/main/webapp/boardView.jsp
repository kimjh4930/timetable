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
    <div id="boardView_content">
        <div class="boardview_row" style="background-color: #C1CDCD;">
            <div class="col-xs-6 col-sm-2">
                <p class="boardview_p" style="margin-left:20px;">제목</p>
            </div>
            <div class="col-xs-6 col-sm-6">
                <p class="boardview_p" style="margin-left:20px;">데이터베이스 프로젝트</p>
            
            </div>
            <div class="col-xs-6 col-sm-2">
                <p class="boardview_p" style="text-align:center">작성일</p>
            </div>
            <div class="col-xs-6 col-sm-2">
                <p class="boardview_p" style="text-align:center">2012-03-04</p>
            </div>
        </div>
        <div class="boardview_row">
            <div class="col-xs-6 col-sm-2" style="background-color: #C1CDCD; height: 50px;">
                <p class="boardview_p" style="margin-left:20px;" >작성자</p>
            </div>
            <div class="col-xs-6 col-sm-10">
                <p class="boardview_p" style="margin-left:20px;">DBMaster</p>
            </div>
        </div>
        <div class="boardview_row">
            <div class="col-xs-6 col-sm-2" style="background-color: #C1CDCD; height:50px;">
                <p class="boardview_p" style="margin-left:20px;">교수님 성함</p>
            </div>
            <div class="col-xs-6 col-sm-10">
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        <p class="boardview_p" style="margin-left:20px;">최진탁 교수님</p>
                    </div>
                    <div class="col-xs-6 col-sm-2" style="background-color: #C1CDCD; height:50px;">
                        <p class="boardview_p" style="text-align:center;">이수학기</p>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <p class="boardview_p" style="text-align:center;">2014년 2학기</p>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <p class="boardview_p" style="text-align:center;">평점</p>
                    </div>
                    <div class="col-xs-6 col-sm-2">
                        <p class="boardview_p" style="text-align:center;">9.87</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer id="main_footer">
        <h3>footer</h3>
    </footer>
</body>
</html>