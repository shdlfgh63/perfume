<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>

<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CART</title>
 <script src="https://code.jquery.com/jquery-3.6.0.js"></script> 
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
	.input_size_20{
		width:20px;
		height:20px;
	}
	.all_check_input{
		margin: 18px 0 18px 18px;
	}
	.all_chcek_span{
		
    	font-size: 20px;
    	font-weight: bold;		
	}
</style>
<script>
$(document).ready(function() {


	$("#cbx_chkAll").click(function() {
		if($("#cbx_chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
		else $("input[name=chk]").prop("checked", false);
	});

	$(function(){

		$('input:checkbox[name=chk]').on('click', function(){
			//값들의 갯수 -> 배열 길이를 지정
			var grpl = $('input:checkbox[name=chk]:checked').length;
			console.log(grpl);
			//배열 생성
			var grparr = [];
			var result=0;

			//배열에 값 주입
			for(var i=0; i<grpl; i++){
				grparr[i] = $('input:checkbox[name=chk]:checked:eq('+i+')').val();
				result += Number(grparr[i]);
			}
			$('#tt_price').text(result+'원');
			$('#result_price').text(Number(result+3000)+'원');
			$('#payment').attr("href", "${pageContext.request.contextPath}/order/${member.id}?price="+Number(result+3000));




		});
	});
	
	
	$(".btn_delete").click(function() {
		var param = $(this).data('cart_id');
		
		$.ajax({
	        type : "POST",            // HTTP method type(GET, POST) 형식이다.
	        url : "/cart/delete",      // 컨트롤러에서 대기중인 URL 주소이다.
	        data : {"cart_id" : param},            // Json 형식의 데이터이다.
	        success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	            // 응답코드 > 0000
	            alert("삭제 되었습니다");
				location.reload();
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	            alert("통신 실패.")
	        }
	    });
		location.reload();
	});
	$("#payment").click(function (){
		var check = $('input:checkbox[name=chk]:checked').length;
		if (check == 0){
			alert("상품을 하나 이상 체크 해주세요");
			return false;
		}
	});
	
	
	$(".btn_modify").click(function() {
		var param = $(this).data('cart_id');
		var thisRow = $(this).closest('tr');
		var param2 = thisRow.find('td:eq(3)').find('.product_count').val();
		
		
		$.ajax({
	        type : "POST",            // HTTP method type(GET, POST) 형식이다.
	        url : "/cart/modify",      // 컨트롤러에서 대기중인 URL 주소이다.
	        data : {"cart_id" : param,
	        		"product_count" : param2},            // Json 형식의 데이터이다
	        success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	            // 응답코드 > 0000
	            alert("변경 되었습니다");
				location.reload();
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
	            alert("통신 실패.")
	        }
	    });
		location.reload();
	});
	
})

 
</script>


</head>

<body>
<div class="container-fluid">
<br>
<h1 align="center">Cart.</h1><br><br>
	<!-- 체크박스 전체 여부 -->
	<div class="all_check_input_div">
		<input type="checkbox" class="all_check_input input_size_20" id="cbx_chkAll"/><span class="all_chcek_span">전체선택/해제</span>
	</div>

       
<table class="table table-hover" >
   <tr class="active">
   	  <th>&nbsp;</th>   
      <th><p class="text-center">상&nbsp;품&nbsp;명</p></th>
      <th><p class="text-center">단&nbsp;가</p></th>
      <th><p class="text-center">수&nbsp;량</p></th>
      <th><p class="text-center">금&nbsp;액</p></th>
      <th>&nbsp;</th>
   </tr>
     <!-- list출력하기 위해 forEach문을 사용해 ci라는 변수에 넣는다. -->
    <c:forEach var="ci" items="${myCartInfo}">
    <tr align="center">
         <td class ="cart_info_td">
             <input type="checkbox" class="individual_cart_checkbox input_size_20" name="chk" value="${ci.price * ci.product_count}">
      		 <input type="hidden" class="individual_Price_input" value="${ci.price }">
			 <input type="hidden" class="individual_count_input" value="${ci.product_count}">
			 <input type="hidden" class="individual_totalPrice_input" value="${ci.price * ci.product_count}">
			 <input type="hidden"  name="cart_id" value="${ci.cart_id}">
         </td>
         <td height="150px" align="center" valign="middle">
         	<img src="${ci.image}" width=120px height="120px" align="left" />
         	<p class="text-center">${ci.name}</p>    	
      	</td>      
      	
         <td>
         	<fmt:formatNumber value="${ci.price}"
                 pattern="#,###,### 원" />
          </td>
                 <!-- fmt:formatNumber 태그는 숫자를 양식에 맞춰서 문자열로 변환해주는 태그이다 -->
                 <!-- 여기서는 금액을 표현할 때 사용 -->
                 <!-- ex) 5,000 / 10,000 등등등-->
                 
         <td><input type="number" min=1 name="product_count" style="width:45px;" value="${ci.product_count}" class="product_count" />
                <a class="quantity_modify_btn" data-cart_id="${ci.cart_id}">
                	<button type="button" class="btn btn-primary btn-sm btn_modify"  data-cart_id="${ci.cart_id}">변경</button>
                </a>        
         </td>
         <td>
         	<fmt:formatNumber value="${ci.price * ci.product_count}"
                 pattern="#,###,### 원" />
        </td>
         <td>
         	<button type="button" class="btn btn-warning btn-sm btn_delete" id="delete_btn" data-cart_id="${ci.cart_id}">삭제</button>
         </td>
    </tr>
    </c:forEach>
</table>
<br><br><br><br>
<p> 상품가격 30,000원이상시 무료배송입니다.</p>
<table class="table table-striped" >
	<tr>
		<th><p class="text-center">총 상품수량</p></th>
		<th></th>
		<th>총 상품가격</th>
		<th></th>
		<th>배&nbsp;송&nbsp;비</th>
		<th></th>
		<th>최종 결제금액</th>
	</tr>
	
	<tr>
		<td align="center"><span class="totalCount_span"></span>${total }개</td>
		<td><span class=""></span></td>
		<td id="tt_price"><span class="totalPrice_span"></span></td>
		<td><span class="glyphicon glyphicon-plus"></span></td>
		<td><span class="delivery_price"></span>3000원</td>
		<td><span class="glyphicon glyphicon-arrow-right"></span></td>
		<td id="result_price"><span class="finalTotalPrice_span">0원</span></td>
	</tr>
	
</table>
<p><a id="payment" href="${pageContext.request.contextPath}/order/${member.id}"><button type="button" class="btn btn-primary btn-block">주문하기</button></a></p>


	

</div> 


</body>
</html>