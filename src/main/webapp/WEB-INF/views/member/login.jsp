<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html><html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> 
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<style>
/* 로그인 실패시 경고글 */
.login_warn{
    margin-top: 5px;
    text-align: center;
    color : red;
}
</style>
<body>


<div class="container" align="center">
	<div class="col-md-4 col-me-offset-4">
		<h3 class="form-signin-heading">Please sign in</h3>
		<form class="form-signin"  id="login_form" method="post">
			<div class="form-group">
				<label class="sr-only">User Name</label>
				<input name="id" class="form-control" placeholder="ID" required autofocus>
			</div>
			<div class="form-group">
				<label class="sr-only">Password</label>
				<input type="password" name="password" class="form-control" placeholder="Password" required>
				<c:if test = "${result == 0 }">
					<div class = "login_warn">ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
				</c:if>
			</div>
			<button class="btn btn-lg btn-success btn-block" id="loginBtn" type="button">로그인</button><br>
			<p>아직 회원이 아니신가요?</p>
			<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="location.href='/member/join'">회원가입</button>
			<p><a href="find_id_form.do">아이디 찾기 </a> / <a href="find_pw_form.do"> 비밀번호 찾기 </a></p>
		</form>
	</div>
</div>

<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $("#loginBtn").click(function(){
        
        //alert("로그인 버튼 작동");
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
        
    });
 
</script>
</body>
</html>