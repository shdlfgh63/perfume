<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			location.href='../member/login_form.do';
		})
	})
</script>
<title>아이디 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>아이디 찾기 검색결과</h3>
			</div>
			<div>
				<P>회원님의 ID :</P>
				<c:if test="${id == null}">
				<h3>가입된 아이디가 없습니다.</h3>
				</c:if>
					
					<h3>${ id }</h3> 
				
				<p class="w3-center">
					<button type="button" id="loginBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">로그인</button>
					<button type="button" id="pwBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">비밀번호 찾기</button>
				</p>
			</div>
		</div>
	</div>
</body>
<script>
	$(function(){
		$("#loginBtn").click(function(){
			location.href='login';
		});
	});
	
	$(function(){
		$("#pwBtn").click(function(){
			location.href='find_pw_form.do';
		});
	});
</script>


</html>