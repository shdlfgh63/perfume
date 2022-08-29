<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<title>2.5ml</title>
<style>
.col-sm-6 {
	padding-top: 200px;
	display: flex;
}

.row img {
	width: 80%;
	margin-left: 130px;
}

.dropdown-menu a {
	text-decoration: none;
	color: gray;
}

.progress-bar {
	 progress-bar-bg:    black;
	/* $progress-height:                   1rem;
       $progress-font-size:                $font-size-base * .75;
       $progress-bg:                       $gray-200;
       $progress-border-radius:            $border-radius;
       $progress-box-shadow:               $box-shadow-inset;
       $progress-bar-color:                $white;
       $progress-bar-bg:                   $primary;
       $progress-bar-animation-timing:     1s linear infinite;
       $progress-bar-transition:           width .6s ease;
*/
}
#ml{
	width: 400px;
	height: 30px;
	padding-left: 20px;
	font-size: 18px;
	color: gray;
	border: 1px solid black;
	border-radius: 1px;
	
}

</style>

	<script>
		$(document).ready(function(){
			/* 상품 삭제 버튼 */
			$("#enrollBtn").on("click",function(e){

				e.preventDefault();

				$("#enrollForm").submit();
			});
		});
	</script>

	<script>
		$(document).ready(function(){
			/* 상품 수정 버튼 */
			$("#enrollBtn2").on("click",function(e){

				e.preventDefault();

				$("#enrollForm2").submit();
			});
		});
	</script>

<script>


	$(document).ready(function(){
		
		var price;
		$("#ml").change(function() {
			if ($("#ml").val() == 'price') {
				price = ${price}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}else if ($("#ml").val() == 'price2') {
				price = ${price2}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}else if ($("#ml").val() == 'price3') {
				price = ${price3}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}
		});
		
		/*리뷰 리스트 출력*/
		/*
		const product_id = '${product_id}';

		$.getJSON("/review/list", {product_id : product_id}, function(obj){
			
			makeReviewContent(obj);
			*/
		});



	

	function payment() {
		var price = $("#ml option:selected").val();
		
		
		
		
		var params = {
				user_id      : "${sessionScope.member.id}"
              , product_id       : "${name}"
              , price : price
              
                
             
      }
		$.ajax({
            type : "POST",            // HTTP method type(GET, POST) 형식이다.
            url : "detail/cart",      // 컨트롤러에서 대기중인 URL 주소이다.
            data : params,            // Json 형식의 데이터이다.
            success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                // 응답코드 > 0000
                alert("장바구니에 추가 되었습니다");
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신 실패.")
            }
        });
		
	}
	

		
	

</script>
</head>
<body>



	<!--  http://drive.google.com/uc?export=view&id=1-3p5BqrlNWPxZ6K2Ztu2ftxLOppfkTXF-->

<div style="background-color: white;">

	<div class="container">
	
		<div class="row">

			<div class="col-sm-6">
				<div class="card"
					style="width: 33rem; text-align: center; border: none;">



					<c:forEach var="item" items="${list}" >
						<img style="height: 35rem;" src="${item.image} "
							class="card-img-top" />
					</c:forEach>
				</div>
			</div>

			<div class="col-sm-6">
				<div class="product_title"
					style="padding-top: 100px; padding-left: 100px;">
					<h4>
						<strong><c:forEach var="item" items="${list}" >${item.name} </c:forEach></strong>
										
					</h4>
					<div class="product_price">
						<c:forEach var="item" items="${list}" >
							<h6 style="padding-left: 310px;">
								<strong><fmt:formatNumber value="${item.price}"
										pattern="#,### 원" /></strong>
							</h6>
						</c:forEach>
						<br>
					</div>


					<div class="dropdown">

						
						
						<select name="ml" id="ml">												
						    <option value="price">40ml </option>
						    <option value="price2">60ml + 5,000</option>
						    <option value="price3">120ml + 15,000</option>
						</select>
                        



						
                      
					</div>
					<br>
					<div class="border-bottom"></div>

					<div class="all_price"
						style="padding-top: 20px; display: flex; padding-bottom: 10px;">
						<h6>총 상품금액</h6>
						<c:forEach var="item" items="${list}" >
							<h6 style="margin-left: 230px;" id="p">
								<strong><fmt:formatNumber value="${item.price}"
										pattern="#,### 원" /></strong>
							</h6>
						</c:forEach>
					</div>
					<div>
						<a href="/shoporder/addOrder?name=${name}&price=${price}&id=${sessionScope.member.id}" style="text-decoration: none; color: black;">
							<div class="border border-dark"
								style="text-align: center; font-size: 20px; font-weight: bold; height: 50px; padding-top: 10px;">
								바로 구매</div>
						</a>
					</div>

					<div style="display: flex;">
						<div style="padding-top: 10px; width: 320px;">
						
						
						
						<button onclick="payment()" type="button" class="addCart_btn" style="text-decoration: none; color: white; height:50px; width: 350px; background-color: black; font-size: 18px; font-weight: bold;">
							장바구니
							</button>

							<c:if test="${sessionScope.member.adminCk eq 1}">
								<form id="enrollForm" name="regGoods" action="/crud/deleteGoods" class="form-horizontal" method="post"
									  enctype="multipart/form-data">

									<div class="form-group row">
										<div class="col-sm-offset-2 col-sm-10">
											<input id="enrollBtn" type="submit" class="btn btn-danger" value="삭제">
											<input type="hidden" name="n" value="<c:forEach var="item" items="${list}" >${item.product_id} </c:forEach>">
										</div>
									</div>
								</form>
							</c:if>

							<c:if test="${sessionScope.member.adminCk eq 1}">
								<form id="enrollForm2" name="updateGoods" action="/crud/updateGoods" class="form-horizontal" method="GET"
									  enctype="multipart/form-data">

									<div class="form-group row">
										<div class="col-sm-offset-2 col-sm-10">
											<input  type="hidden" name="product_id" value="<c:forEach var="item" items="${list}" >${item.product_id} </c:forEach>">

											<button id="enrollBtn2" type="button" class="btn btn-warning" onclick="location.href='http://localhost:8081/crud/updateGoods'">수정</button>
										</div>
									</div>
								</form>
							</c:if>


						</div>
						<div style="padding-left: 40px; padding-top: 10px;">
							<button class="hit" style="background-color: white; border: 0; outline: 0;"><i class="bi bi-heart" style="font-size: 2rem;"></i></button>
						</div>
					</div>
					<br> <span style="font-size: 12px;">회원 가입 시 할인, 포인트 적립
						등 다양한 혜택을 받을 수 있습니다.</span>
				</div>

			</div>

			<div class="row" style="padding-top: 130px; padding-bottom: 20px;">

				<div class="col-sm-12"
					style="display: flex; justify-content: center; font-size: 20px;">

					<!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" class="scroll"
							style="color: black; text-decoration: none;"><span><strong>상세정보</strong></span></a>
						<div class="border-bottom border border-dark"></div>
					</div>

					<div class="review" style="padding-left: 40px">
						<a href="#target2" style="color: gray; text-decoration: none;"><span>리뷰</span></a>
						<div class="border-bottom"></div>
					</div>

				</div>


			</div>
			
			<div id="target1" class="row">

				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-03_shop1_125421.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-04_shop1_125422.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-05_shop1_125606.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-06_shop1_125606.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-07_shop1_125606.png">
				</div>

			</div>


			<div class="row" style="padding-top: 130px; padding-bottom: 200px;">

				<div class="col-sm-12"
					style="display: flex; justify-content: center; font-size: 20px;">

					<!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" style="color: gray; text-decoration: none;"><span>상세정보</span></a>
						<div class="border-bottom "></div>
					</div>

					<div id="target2" class="review" style="padding-left: 40px">
						<a href="#target2" style="color: black; text-decoration: none;"><span><strong>리뷰</strong></span></a>
						<div class="border-bottom border border-dark"></div>
					</div>
					
								

				</div>


			</div>



		</div>

	</div>

	<div class=container style="padding-bottom: 100px;">
		<div class="border-bottom border border-dark"></div>
		 <div class="row" style="display: flex;">
		 
			   <div class="col-sm-5" style="text-align: center; margin-top: 20px;">
				    <i class="bi bi-star-fill" style="font-size: 4rem; margin-top: 20px;"> 4.6</i><br>
				    90%의 구매자가 이 상품을 좋아합니다.<br>
				    <button type="button" class="btn btn-lg btn btn-dark" id="review_button" style="margin-top: 20px;">상품 리뷰 작성하기</button>				      
				<!-- 
				<c:if test="${member != null}">
					<div class="reply_button_wrap">
					<button>리뷰 쓰기</button>
					</div>
				</c:if>	
			   	-->
			   </div>
			  
			  
               <div class="col-sm-2" style="padding-left:  100px;">
                    <div><h6 style="text-align: center;  margin-top: 70px;">아주 좋아요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">맘에 들어요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">보통이에요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">그냥 그래요</h6></div>
                     <div><h6 style="text-align: center; font-weight: bold; margin-top: 7px;">아주 별로에요</h6></div>
                      
               </div>


			<div class="col-sm-4" >
				<div class="progress" style="margin-top: 70px;">				 
				 <div class="progress-bar"  role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>								
			</div>
			
			
		</div>
	</div>

     <div class="container" style="padding-bottom: 20px;">
     <div class="border-bottom"></div>
     </div>
     
     <!--
     <div class="review_not_div">

     </div>
     <ul class="review_content_ul">

     	<li>
     		<div class="comment_wrap">
     			<div class="review_top">
    				<span class="id_span">admin</span>
    				<span class="date_span">2022-01-01</span>
    				<span class="rating_span">평점 : <span class="rating_value_span">3.5</span>점</span>
    				<a class="update_review_btn">수정</a><a class="update_review_btn">삭제</a>
     			</div>
     			<div class="review_bottom">
     				<div class="review_bottom_txt">
     					내용내용내용내용내용내용내용내용내용내용내용내용내용내용
     				</div>
     			</div>
     		</div>
     	</li>

     </ul>

     <div class="review_pageInfo_div">
 		<ul class="pageMaker">

			<li class="pageMaker_btn prev">
				<a>이전</a>
			</li>
			<li class="pageMaker_btn">
				<a>1</a>
			</li>
			<li class="pageMaker_btn">
				<a>2</a>
			</li>
			<li class="pageMaker_btn active">
				<a>3</a>
			</li>
			<li class="pageMaker_btn next">
				<a>다음</a>
			</li>

		</ul>
     </div>
     -->
    
    <!-- 리뷰 목록 -->
    <div class="container">	 		
     		<c:forEach var="revlist" items="${revlist}">
    			<div class="row">
    				<div class="col-2">${revlist.rating} / 5.0</div>
    				<div class="col-2">${revlist.writerId}</div>
    				<div class="col-1"></div><div class="col-1"></div><div class="col-1"></div>
    				<div class="col-5"><fmt:formatDate var="revDate" value="${revlist.regDate}" type="date" pattern="yyyy-MM-dd"/>${revDate}</div>
    			</div>		
    			<br>
    			<div class="row"><p>${revlist.content}</p></div>
    			<hr>
     		</c:forEach>
     
     </div>
  
</div>
			
<!--
<script>

/* 리뷰쓰기 */
$("#review_button").on("click", function(e){
	
	e.preventDefault();			

	const id = '${member.id}';
	const product_id = '${product_id}';
	
	
	let popUrl = "/review/enroll";
	console.log(popUrl);
	let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
	
	window.open(popUrl,"리뷰 쓰기",popOption);
});

/* 관심상품 추가 동작 */
const form = {
		id : '${member.id}',
		name : '${name}',
		image : '${image}',
		price : '${price}'
}



/* 관심상품 추가 버튼 (♡) */
$(".hit").on("click", function(e){
	
	$.ajax({
		url: '/mywish/add',
		type: 'POST',
		data: form,
		success: function(result){
			if(result == '0') {
				 alert("관심상품 목록 추가에 실패하였습니다.");
			} else if(result == '1'){
				alert("관심상품 목록에 추가되었습니다.");
			} else if(result == '2'){
				alert("관심상품 목록에 이미 추가되었습니다.");
			} else if(result == '5'){
				alert("로그인이 필요합니다.");
			}
		}
	})
});

</script>
-->

<script>

//아래 메서드는 "$(document).ready(function(){" 내부에 작성할 것. (삭제 후, 위쪽 script 태그에 이동 예정)
/* 리뷰 리스트 출력 */
 
/*
const product_id = '${product_id}';

$.getJSON("/review/list", {product_id : product_id}, function(obj){
	
	makeReviewContent(obj);
	
});
*/	



	/* 댓글(리뷰) 동적 생성 메서드 */
	/*
	function makeReviewContent(obj){

		if(obj.list.length === 0){
			$(".review_not_div").html('<span>리뷰가 없습니다.</span>');
			$(".review_content_ul").html('');
			$(".pageMaker").html('');
		} else{
			
			$(".review_not_div").html('');
			
			const list = obj.list;
			const pf = obj.pageInfo;
			const userId = '${member.id}';		
		*/	
			/* list */
		/*	
			let review_list = '';			
			
			$(list).each(function(i,obj){
				review_list += '<li>';
				review_list += '<div class="comment_wrap">';
				review_list += '<div class="review_top">'; */
				/* 아이디 */
				// review_list += '<span class="id_span">'+ obj.writerId+'</span>';
				/* 날짜 */
				// review_list += '<span class="date_span">'+ obj.regDate +'</span>';
				/* 평점 */
			/*	review_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.rating +'</span>점</span>';
				if(obj.writerId === userId){
					review_list += '<a class="update_review_btn" href="'+ obj.reviewId +'">수정</a><a class="delete_review_btn" href="'+ obj.reviewId +'">삭제</a>';
				}
				review_list += '</div>'; //<div class="review_top">
				review_list += '<div class="review_bottom">';
				review_list += '<div class="review_bottom_txt">'+ obj.content +'</div>';
				review_list += '</div>';//<div class="review_bottom">
				review_list += '</div>';//<div class="comment_wrap">
				review_list += '</li>';
			});		
			
			$(".review_content_ul").html(review_list);    */			
			
			/* 페이지 버튼 */
			
			// let review_pageMaker = '';	
			
				/* prev */
				/*
				if(pf.prev){
					let prev_num = pf.pageStart -1;
					review_pageMaker += '<li class="pageMaker_btn prev">';
					review_pageMaker += '<a href="'+ prev_num +'">이전</a>';
					review_pageMaker += '</li>';	
				} */
				/* numbre btn */
				/*
				for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
					review_pageMaker += '<li class="pageMaker_btn"> ';
					if(pf.cri.pageNum === i){
						review_pageMaker += 'active';
					}
					review_pageMaker += '">';
					review_pageMaker += '<a href="'+i+'">'+i+'</a>';
					review_pageMaker += '</li>';
				} */
				/* next */
				/*
				if(pf.next){
					let next_num = pf.pageEnd +1;
					review_pageMaker += '<li class="pageMaker_btn next">';
					review_pageMaker += '<a href="'+ next_num +'">다음</a>';
					review_pageMaker += '</li>';	
				}  */
				// console.log(review_pageMaker);
			/*
				$(".pageMaker").html(review_pageMaker);				
			
		}		
		
	} */
	
	// END - function makeReviewContent(obj) 	

	/* 리뷰 페이지 정보 */
	/*
	const cri = {
			product_id = '${product_id}',	
			pageNum : 1,
			amount : 10
				
	} */

	/* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
	/*
	let reviewListInit = function(){
			$.getJSON("/review/list", cri, function(obj){
				
				makeReviewContent(obj);
				
			});	
	
	}
	*/

</script>



</body>
</html>