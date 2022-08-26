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

.myreview_mod {
	border-color: #140f0e;
	text-decoration: none;
	color: #140f0e;
}

.myreview_del {
	border-color: #ff0065;
	text-decoration: none;
	color: #ff0065;
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
<hr style="color:#555555">


<div class="row">
		<!-- 좌측 마이페이지 사이드메뉴 -->
		<div class="col-4" style="padding: 0 80px 0 20px">
		<ul class="list-group list-group-flush" style="border-bottom:1px solid black">
  			<li class="list-group-item" ><a href="/myorder/${member.id}" id="mymenu">주문내역</a></li>
  			<li class="list-group-item" ><a href="/mywish/${member.id}" id="mymenu">관심상품</a></li>
  			<li class="list-group-item" ><a href="/myreview/${member.id}" id="mymenu">나의리뷰</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">나의문의</a></li>
  			<li class="list-group-item" ><a href="#" id="mymenu">정보수정</a></li>
		</ul>
		</div>
		<!-- 좌측 마이페이지 사이드메뉴 (End) -->	

	<div class="col-8">
	<div class="container">
			<div class="row" style="color:#555555; font-weight:600">고객님께서 구매하신 상품의 리뷰를 관리하는 공간입니다.</div>		
			
			<br><hr>
			
			<!-- 목록이 들어갈 곳 -->
			<c:forEach var="rvs" items="${reviews}">
			<!-- 추후에 상품이름 목록에 추가 -->		
			<div class="row">
			<div class="col"><fmt:formatDate var="myRevDate" value="${rvs.regDate}" type="date" pattern="yyyy-MM-dd"/>${myRevDate}</div>
			<div class="col">${rvs.name}</div>
			<div class="col">${rvs.rating} / 5.0 </div>		
			<br>
			<p>${rvs.content}</p>
			<br>
			<div class="row">
			<div class="col-3"></div><div class="col-3"></div><div class="col-3"></div>
				<div class="col-3">
					<button type="button" class="myreview_mod">수정</button>
					<button type="button" class="myreview_del" data-reviewid="${rvs.reviewId}">삭제</button>
				</div>
			</div>
			</div><hr>		
			</c:forEach>	
	</div> 
	</div>	
	
</div>	
	
<form action="/myreview/deletereview" method="post" class="reviewlist_delete_form">
	<input type="hidden" name="reviewId" class="delete_reviewId">			
	<input type="hidden" name="writerId" value="${member.id}">			
</form>

<script>
$(".myreview_del").on("click", function(e){
	e.preventDefault();
	const reviewId = $(this).data("reviewid")
	$(".delete_reviewId").val(reviewId);
	$(".reviewlist_delete_form").submit();
});	

</script>	
	
</main>	



