<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>주문결제</title>

    
<script src="https://code.jquery.com/jquery-3.6.0.js"></script> 
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>    

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

  </head>
  <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
    
      <h3>주 문 서</h3>
      <p class="lead">주문하실 상품명 및 수량을 정확하게 확인해주세요</p>
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">Your cart</span>
          <span class="badge bg-primary rounded-pill"></span>
        </h4>
        <ul class="list-group mb-3">

          <li class="list-group-item d-flex justify-content-between">
            <span>합 계 (원)</span>
            <strong>${price}원</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Promo code">
            <button type="submit" class="btn btn-secondary">Redeem</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-8" >
        <h4 class="mb-3" align="center">배 송 정 보</h4>
        <hr class="my-4">
        <div class="my-3">
        <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
		  <label class="form-check-label" for="flexRadioDefault2">
		    회원정보와 동일
		  </label>
		</div>
         <div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
		    새로운 배송지
		  </label>
		</div>
		<br><br>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-12">
              <label for="username" class="form-label">받는사람</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="userName" placeholder="받는으시는 분의 성함을 입력해주세요"  value="${member.user_name }" required>
              <div class="invalid-feedback">
                  Your username is required.
                </div>
              </div>
            </div>
            
            <div class="col-12">
              <label for="username" class="form-label">휴대전화</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="mobile_input" placeholder="숫자로만 입력해주세요" value="${member.mobile }" required>
              <div class="invalid-feedback">
                  Your mobile is required.
                </div>
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">우편번호</label>
              <input type="text" class="form-control" id="zipcode_input" placeholder="" value="${member.zipcode }" required readonly>
              <div class="invalid-feedback">
                Zip code required.
              </div>
            </div>
			<div class="col-md-6">
              <label for="zip" class="form-label"></label><br>
              <input type="button" class="form-control btn btn-primary" id="addbtn" onclick="daumZipCode()" value="우편번호 및 주소찾기"/>
            </div>
            <div class="col-12">
              <label for="address2" class="form-label">배송 주소 <span class="text-muted"></span></label>
              <input type="text" class="form-control" id="address1_input" placeholder="주소찾기 버튼을 눌러주세요"   value="${member.address1 }" readonly>
            </div>
			<div class="col-12">
              <label for="address2" class="form-label">상세주소<span class="text-muted">(선택)</span></label>
              <input type="text" class="form-control" id="address2_input" placeholder="상세주소 입력" value="${member.address2 }">
            </div>
            <div class="col-md-12">
              <label for="country" class="form-label">메세지</label>
              <select class="form-select" id="select" >
                <option value="">--메세지선택--</option>
                <option>도착하기전에 연락주세요</option>
                <option>경비실에 맡겨주세요.</option>
                <option value="direct">직접입력</option>
              </select>      	
            
               <input type="text" id="selboxDirect" name="selboxDirect"/> 
          
            </div>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">지불수단</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">신용카드</label>
            </div>
            <div class="form-check">
              <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="debit">계좌이체</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">카카오페이</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">${price}원 결제하기</button>
        </form>
      </div>
    </div>
  </main>


</div>


   

     
      
<script>

$(function(){

//직접입력 인풋박스 기존에는 숨어있다가
$("#selboxDirect").hide();

$("#selbox").change(function() {

        //직접입력을 누를 때 나타남
		if($("#selbox").val() == "direct") {
			$("#selboxDirect").show();
		}  else {
			$("#selboxDirect").hide();
		}

	}) 

});

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
var themeObj = {
		   //bgColor: "#5599FF", //바탕 배경색
		   searchBgColor: "#6699DD", //검색창 배경색
		   //contentBgColor: "", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
		   //pageBgColor: "", //페이지 배경색
		   //textColor: "#FFFFFF", //기본 글자색
		   queryTextColor: "#FFFFFF", //검색창 글자색
		   //postcodeTextColor: "", //우편번호 글자색
		   //emphTextColor: "", //강조 글자색
		   //outlineColor: "" //테두리
		};

function daumZipCode() {
	new daum.Postcode({
		theme: themeObj,
		oncomplete: function(data) {
			// 팝업 창에서 검색한 결과 중 항목을 클릭하였을 경우에 실행할 코드를 이곳에 작성한다.
			
			// 각 주소의 노출규칙에 따라서 주소를 조합한다.
			// 내려오는 변수의 값이 없을 경우에는 공백('') 값을 가지므로, 이름을 참조하여 분기한다.
			var fullAddress	= '';	// 최종   주소 변수
			var	subAddress	= '';	// 조합형 주소 변수
			
			// 사용자가 선택한 주소의 타입에 따라서 해당 주소 값을 가져온다.
			if(data.userSelectedType == 'R') {	// 도로명 주소를 선택한 경우
				fullAddress	= data.roadAddress;
			} else {	// 지번 주소를 선택한 경우
				fullAddress = data.jibunAddress;
			}
			
			// 사용자가 선택한 주소가 도로명 타입일 때 주소를 조합한다.
			if(data.userSelectedType == 'R') {
				// 법정동명이 있을 경우 추가한다.
				if(data.bname != '') {
					subAddress += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if(data.buildingName != '') {
					subAddress += (subAddress != '' ? ', ' + data.buildingName : buildingName);
				}
			}
			
			// 조합형 주소의 유무에 따라서 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			fullAddress += (subAddress != '' ? '(' + subAddress + ')' : '');
			
			// 우편번호와 주소 정보를 해당 필드에 출력시킨다.
			document.getElementById('zipcode_input').value	= data.zonecode;	// 우편번호
			document.getElementById('address1_input').value	= fullAddress;		// 주소내용
			
			// 커서를 상세주소 입력 필드에 나타나게 한다.
			document.getElementById('address2_input').focus();
		}
	    //theme: {
	    //    searchBgColor: "#0B65C8", //검색창 배경색
	    //    queryTextColor: "#FFFFFF" //검색창 글자색
	    //}
	// }).open();	// open()만 기술을 하면 팝업 창이 여러 개 나타나게 된다.
	}).open({
		// 우편번호 팝업 창이 여러 개 뜨는 것을 방지하기 위해 popupName을 사용한다.
		popupName:	'postcodePopup'
	});
}

</script>

  </body>
</html>

