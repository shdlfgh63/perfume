<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>


<main style="margin: 100px 150px 100px 150px">

<style>
#mymenu {
	color:#555555;
	text-decoration: none;
}

.list-group-item:hover {
	background-color: #b6b8bb;
}



</style>

<h3 style="margin:130px 0 40px 0; text-align:center">${member.id}님의 마이페이지</h3>
<hr style="color:#555555">

<div class="row">
	<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 80px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
   			<li class="list-group-item" ><a href="/myorder/${member.id}" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="/myedit/${member.id}" id="mymenu">정보수정</a></li>
		</ul>
		</div>
	<!-- 좌측 마이페이지 사이드메뉴 (End) -->	

	<div class="col-8">		
		<div class="container">
			<div class="col" style="margin: 0 0 40px 0; color:#555555; font-weight:600">고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.</div>
			
			<div class="row" style="border-bottom:1px solid black">
				<div class="col-2">주문일자</div>
				<div class="col-4">상품명</div>
				<div class="col-1">수량</div>
				<div class="col-2">총금액</div>
				<div class="col-2"></div>
			</div>			


			


			<c:forEach var="item" items="${order}">
				<div class="row" style="border-bottom:1px solid lightgrey">
					<div class="col-2"><fmt:formatDate value="${item.orderDate}" dateStyle="default"/></div>
					<div class="col-4">${item.name}</div>
					<div class="col-1">${item.productCount}</div>
					<div class="col-2"><fmt:formatNumber value="${item.totalPrice}"/></div>
					<div class="col-2"><button class="delete_order" data-orderid="${item.orderId}">반품신청(삭제)</button></div>
				</div>
			</c:forEach>
		</div>
	</div>		
		
	<!-- 목록 삭제 form -->
	<form action="/deleteorder" method="post" class="orderlist_delete_form">
		<input type="hidden" name="orderId" class="delete_orderId">
	</form>
			
</div>

<script>
/* 목록삭제(버튼) */
$(".delete_order").on("click", function(e){
	e.preventDefault();
	const orderId = $(this).data("orderid")
	$(".delete_orderId").val(orderId);
	$(".orderlist_delete_form").submit();
});

/* 목록삭제(버튼_부트스트랩) : 추후 구현 */


</script>


</main>



