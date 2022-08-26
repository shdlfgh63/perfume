<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

<style>
#mymenu {
	color:#555555;
	text-decoration: none;
}

.list-group-item:hover {
	background-color: #b6b8bb;
}

.delete_wish {
	border-color: #ff0065;
	text-decoration: none;
	color: #ff0065;
}

.add_cart {
	border-color: #140f0e;
	text-decoration: none;
	color: #140f0e;
}

#goodsname {
	color:#555555;
	text-decoration: none;
}

#goodsname:hover {
	font-weight: bold;
}

</style>    
    
<main style="margin: 100px 150px 100px 150px">

<h3 style="margin:130px 0 40px 0; text-align:center">마이페이지</h3>
<%--
	<div class="container">
		<div class="row">
			<div class="col col-6">사용자님, 즐거운 쇼핑 되십시오</div>
			<div class="col">로그아웃</div>
			<div class="col">마이페이지</div>
			<div class="col">장바구니</div>
		</div>
	</div>
 --%>
<hr style="color:#555555">
<div class="row">
		<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 100px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
   			<li class="list-group-item" ><a href="/myorder/${member.id}" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="/mywish/${member.id}" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="/myreview/${member.id}" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">정보수정</a></li>
		</ul>
		</div>
		<!-- 좌측 마이페이지 사이드메뉴 (End) -->	
	
<div class="col-8"  style="padding: 0 0 0 30px">
	
	<div class="container">
		<div class="col"  style="color:#555555; font-weight:600">관심상품으로 등록하신 상품의 목록을 보여드립니다.</div>

		<br><hr>

		<c:forEach var="wi" items="${wishes}">
		<!-- 각 관심상품 리스트 -->
		<div class="row">
				<!-- 상품이미지 -->
				<div class="col-2">
				<img src="${wi.image}" class="img-thumbnail" height="60" width="60">
				</div>
				
				<!-- 상품명 -->
				<div class="col-3">
				<a href="#" id="goodsname">${wi.name}</a>
				</div>
				<!-- 가격 -->
				<div class="col-4">
				<fmt:formatNumber value="${wi.price}"/>
				</div>
				<div class="col-3">
						<button type="button" class="add_cart">장바구니</button>
						
						<!-- <button type="button" class="btn btn-outline-danger" id="wishdel" data-wishid="${wi.wishId}">삭제</button> -->
						
						<button type="button" class="delete_wish" data-wishid="${wi.wishId}">삭제</button>  
				</div>
				
		</div>
		<br><hr>
		</c:forEach>
	
	</div>	

</div>	

</div>

<!-- 목록 삭제 form -->
	<form action="/mywish/deletewish" method="post" class="wishlist_delete_form">
		<input type="hidden" name="wishId" class="delete_wishId">
		<input type="hidden" name="id" value="${member.id}">
	</form>


<script>
					
/* 목록삭제(버튼) */
$(".delete_wish").on("click", function(e){
	e.preventDefault();
	const wishId = $(this).data("wishid")
	$(".delete_wishId").val(wishId);
	$(".wishlist_delete_form").submit();
});						
				
</script>

	
</main>	


