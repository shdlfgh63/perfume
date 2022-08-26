<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<main style="margin: 100px 150px 100px 150px">
<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<hr style="color:#555555">

<div class="row">
	<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 100px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
   			<li class="list-group-item" ><a href="./orderlist" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="./wishlist" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="./myreview" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="./request" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="./myedit" id="mymenu">정보수정</a></li>
		</ul>
		</div>
	<!-- 좌측 마이페이지 사이드메뉴 (End) -->
	
	<div class="col-8" style="padding: 0 0 0 30px">
		<div class="container">
			<div class="col"  style="margin: 0 0 40px 0; color:#555555; font-weight:600">고객님의 궁금하신 문의사항에 대하여 1:1 맞춤상담 내용을 확인하실 수 있습니다.</div>
			<hr>			
				<p><button type="button" class="btn btn-dark">글쓰기</button></p>
		
		</div>
		
	</div>	
	


</div>

</main>


