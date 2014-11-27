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
        <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <p style="margin-top:30px; margin-bottom: 30px;">회원가입</p>
            </div>
            <div class="col-xs-6 col-sm-4"></div>
            <div class="col-xs-6 col-sm-2"></div>
        </div>
	    <div class="row">
		    <div class="col-xs-6 col-sm-2"></div>
		    <div class="col-xs-6 col-sm-4">
		       <p id="enroll_style">아이디</p>
		    </div>
	        <div class="col-xs-6 col-sm-4">
	            <div class="row">
				    <div class="col-xs-8 col-sm-7">
				        <div class="form-group">
						    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter ID">
					    </div>
			        </div>
				    <div class="col-xs-8 col-sm-5">
				        <button type="submit" class="btn btn-default">중복체크</button>
			        </div>
				</div>
	         </div>
	        <div class="col-xs-6 col-sm-2"></div>
	    </div>
	    <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <p id="enroll_style">비밀번호</p>
            </div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
                    <div class="col-xs-8 col-sm-7">
                        <div class="form-group">
                            <input type="password" class="form-control" id="exampleInputEmail1" placeholder="Password">
                        </div>
                    </div>
                    <div class="col-xs-8 col-sm-5"></div>
                </div>
             </div>
            <div class="col-xs-6 col-sm-2"></div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <p id="enroll_style">비밀번호 확인</p>
            </div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
                    <div class="col-xs-8 col-sm-7">
                        <div class="form-group">
                            <input type="password" class="form-control" id="exampleInputEmail1" placeholder="Password">
                        </div>
                    </div>
                    <div class="col-xs-8 col-sm-5"></div>
                </div>
             </div>
            <div class="col-xs-6 col-sm-2"></div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <p id="enroll_style">이름</p>
            </div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
                    <div class="col-xs-8 col-sm-7">
                        <div class="form-group">
                            <input type="password" class="form-control" id="exampleInputEmail1" placeholder="">
                        </div>
                    </div>
                    <div class="col-xs-8 col-sm-5"></div>
                </div>
             </div>
            <div class="col-xs-6 col-sm-2"></div>
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <p id="enroll_style">이메일</p>
            </div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
                    <div class="col-xs-6 col-sm-5">
                        <div class="form-group">
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-1">@</div>
                    <div class="col-xs-6 col-sm-5">
                        <div class="form-group">
                            <input type="email" class="form-control" id="exampleInputEmail1">
                        </div>   
                    </div>
                </div>
            </div>
            <!-- <div class="col-xs-6 col-sm-2"></div> -->
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-2"></div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
				    <div class="col-xs-6 col-sm-4"></div>
				    <div class="col-xs-6 col-sm-4">
				        <button type="button" class="btn btn-primary "style="width : 100px;">가입하기</button>
				    </div>
				    <div class="col-xs-6 col-sm-4"></div>
				</div>
            </div>
            <div class="col-xs-6 col-sm-4">
                <div class="row">
                    <div class="col-xs-6 col-sm-4"></div>
                    <div class="col-xs-6 col-sm-4">
                        <button type="button" class="btn btn-default" style="width : 100px;">취소</button>
                    </div>
                    <div class="col-xs-6 col-sm-4"></div>
                </div>
             </div>
            <div class="col-xs-6 col-sm-2"></div>
        </div>
    </div>
    
    <footer id="main_footer">
        <h3>footer</h3>
    </footer>

</body>
</html>