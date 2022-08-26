<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<main style="margin: 100px 150px 100px 150px">

<h1>리뷰등록 페이지입니다</h1>




<form action="/enrollreview" method="post">
	<div class="input_wrap">
		<label>제품명</label>
		<input name="name">
	</div>
	<div class="input_wrap">
		<label>내용</label>
		<input name="myReviewContent">
	</div>
	<button class="btn">등록</button>	
	
</form>


</main>