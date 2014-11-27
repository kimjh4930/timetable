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
    <div id="boardContent_content">
        <div id="select_area" style="margin-top:20px;">
            <p style="font-size:15px">새로운 문서</p>
            <div class="row" style="margin-top:30px;">
			    <div class="col-xs-6 col-md-4">
			        <div class="row">
					    <div class="col-xs-6 col-sm-4">
					       <p style="text-align:center;">학과</p>
					        
					    </div>
					    <div class="col-xs-6 col-sm-4">
					        <select style="width:150px">
                                <option>학과선택</option>
                                <option>컴퓨터공학부</option>
                                <option>동북아국제통상학부</option>
                            </select>
					    </div>
					</div>
			    </div>
			    <div class="col-xs-6 col-md-4">
                    <div class="col-xs-6 col-sm-4">
                        <p style="text-align:center;">학년</p>
                    </div>
                    <div class="col-xs-6 col-sm-4">
                        <select style="width:150px">
                            <option>학년선택</option>
                            <option>1학년</option>
                            <option>2학년</option>
                            <option>3학년</option>
                            <option>4학년</option>
                        </select>
                    </div>
			    </div>
			</div>
			<div class="row">
                <div class="col-xs-6 col-md-4">
                    <div class="row">
                        <div class="col-xs-6 col-sm-4">
                           <p style="text-align:center;">과목명</p>
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <select style="width:150px">
                                <option>과목선택</option>
                                <option>데이터베이스</option>
                                <option>경제학원리(1)</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-4">
                    <div class="col-xs-6 col-sm-4">
                        <p style="text-align:center;">교수님 성함</p>
                    </div>
                    <div class="col-xs-6 col-sm-4">
                        <select style="width:150px">
                            <option>교수님 선택</option>
                            <option>최진탁</option>
                            <option>박문주</option>
                            <option>김우일</option>
                            <option>김지범</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <div class="row">
                        <div class="col-xs-6 col-sm-4">
                           <p style="text-align:center;">수강학기</p>
                            
                        </div>
                        <div class="col-xs-6 col-sm-4">
                            <select style="width:150px">
                                <option>2014년</option>
                                <option>2013년</option>
                                <option>2012년</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-md-4">
                    
                    <div class="col-xs-6 col-sm-4">
                        <select style="width:100px">
                            <option>학기선택</option>
                            <option>1</option>
                            <option>2</option>
                        </select>
                    </div>
                    <div class="col-xs-6 col-sm-4">
                        <p style="text-align:center;">학기</p>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear:both;height:1px;overflow:hidden;border-bottom:1px dotted #cccccc;border-left:1px solid #cccccc; margin-bottom:20px; margin-top:20px;"></div>
        <div id="title_area" style="margin-top:20px;">
            <div class="row" width="980px">
			     <div class="col-xs-6 col-md-1">
			         <p style="text-align:center; margin-top:5px;">제목</p></div>
                 <div class="col-xs-6 col-md-11">
					 <div class="form-group">
					     <input type="text" class="form-control" id="exampleInputEmail1">
					 </div>
                 </div>
			</div>
        </div>
        <div id="content_area" style="margin-bottom:30px; ">
            <textarea class="form-control" rows="20"></textarea>
        </div>
        <div id="button_area">
            <div style="float: right">
            <button type="button" class="btn btn-primary" style="width:120px; margin-right: 20px">등록</button>
            <button type="button" class="btn btn-default" style="width:120px;">취소</button>
            </div>
        </div>
    </div>
    <footer id="main_footer">
        <h3>footer</h3>
    </footer>
</body>
</html>