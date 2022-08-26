<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"		uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib	prefix="fmt"	uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%	request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입 화면</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script> 
<!-- jQuery  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
	/* 중복아이디 존재하지 않는경우 */
	.id_input_re_1{
		color : green;
		display : none;
	}
	/* 중복아이디 존재하는 경우 */
	.id_input_re_2{
		color : red;
		display : none;
	}
	
</style>

</head>
<body>

<div class="container">
	<form class="form-horizontal" method="post" name="memInsForm" id="join_form" onsubmit="return allCheck()">
		<div class="form-group">
			<div class="col-sm-offset-2 col-sum-5">
				<h2 align="center">회 원 가 입</h2>
			</div>
		</div>
		<div class="form-group">
			<label for="id" class="col-sm-3 control-label">아이디(필수)</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="id_input" name="id" maxlength="16" placeholder="소문자 또는 숫자 조합 4~16자리 " required/>
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
			</div>
			
		</div>
		<div class="form-group">
			<label for="password" class="col-sm-3 control-label">비밀번호(필수)</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="password_input" name="password" maxlength="12" placeholder="6~12자의 영문 대소문자와 숫자로만 입력" required/>
			</div>
		</div>
		<div class="form-group">
			<label for="password" class="col-sm-3 control-label">비밀번호 확인</label>
			<div class="col-sm-4">
				<input type="password" class="form-control" id="passwordCk_input" name="passwordCk" maxlength="12" placeholder="비밀번호 다시 입력" required/>
			</div>
		</div>
		<div class="form-group">
			<label for="name" class="col-sm-3 control-label">이 름(필수)</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="name_input" name="user_name" maxlength="20" placeholder="이름 입력" required/>		
			</div>
		</div>
		<div class="form-group">
			<label for="email" class="col-sm-3 control-label">이메일(필수)</label>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="email_input" name="email" maxlength="50" placeholder="id@domain.com 형식을 지켜주세요" required/>	
			</div>
		</div>
		<div class="form-group">
			<label for="mobile" class="col-sm-3 control-label">전화번호(필수)</label>
			<span></span>
			<div class="col-sm-4">
				<input type="text" class="form-control" id="mobile_input" name="mobile" maxlength="11" placeholder="숫자로만 입력해주세요" required/>
				<span></span>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">우편번호</label>
			<div class="col-sm-2">
				<input type="text"	 class="form-control" name="zipcode" id="zipcode_input" readonly/>		
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">주소(필수)</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="address1" id="address1_input" readonly/>
				<input type="button" class="form-control btn btn-primary" id="addrbtn" onclick="daumZipCode()" value="우편번호 및 주소찾기"/>	
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-3 control-label">상세주소(선택)</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" name="address2" id="address2_input" placeholder="상세주소 입력"/>
			</div>
		</div>
		
		<!--  <div class="form-group">
			<label for="adress" class="col-sm-3 control-label">주 소</label>
			<div class="col-sm-6">
				<input type="text" class="form-control" id="address" name="address" maxlength="50" placeholder="주소 입력"/>
			</div>
		</div> -->
		<div class="form-group">
			<label class="col-sm-3 control-label">회원가입 동의</label>
			<div class="col-sm-3">
				<label class="radio-inline">
					<input type="radio" id="registerYn" name="registerYn" value="Y" checked> 동의
				</label>
				<label class="radio-inline">
					<input type="radio" id="registerYn" name="registerYn" value="N"> 동의안함
				</label>
			</div>
		</div>
		<div class="alert alert-info fade in col-sm-offset-1 col-sm-10">
			<strong>[ PerfumeStore의 개인 정보 수집 및 이용 안내]</strong>
			<h5>
			개인 정보 제3자 제공 동의
			<br>① 개인정보를 제공받는 자: PerfumeStore
			<br>② 개인정보를 제공받는 자의 개인 정보 이용 목적 : 영업관리, 
			설문조사 및 프로모션, 이벤트 경품 제공, eDM 발송, 행사 관련 마케팅
			<br>③ 제공하는 개인정보항목 : 이름, 이메일주소, 연락처, 휴대전화
			<br>④ 개인정보를 제공받는 자의 개인 정보 보유 및 이용 기간 :
			개인정보 취급 목적을 달성하여 더 이상 개인정보가 불 필요하게 된 경우이거나
			5년이 지나면 지체 없이 해당 정보를 파기할 것입니다.
			<br>귀하는 위와 같은 PerfumeStore의 개인정보 수집 및 이용정책에 동의하지 
			않을 수 있으나, PerfumeStore으로부터 솔루션, 최신 IT정보, 행사초청안내 등의 
			유용한 정보를 제공받지 못 할 수 있습니다.
			<br> 개인 정보 보호에 대한 자세한 내용은 http://www.PerfumeStore.com 을 참조바랍니다.
			</h5>
			<div class="checkbox" align="center">
				<label>
					<input type="checkbox" id="is_subscribed" name="is_subscribed" value="o"/>
				</label> PerfumeStore의 개인정보 수집 및 이용에 동의합니다.
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-4 col-sm-8">
				<button type="reset"  class="btn btn-warning btn-lg">다시입력</button>
				<button type="submit" class="btn btn-primary btn-lg">회원가입</button>
			</div>
		</div>
	

	</form>
	
</div>

<script>

//모든 공백 체크 정규식
var empJ = /\s/g;

// 휴대폰 번호 정규식 -생략하고 010~방식


function allCheck(){
	
	  return (idCheck()&&pwCheck()&&nameCheck()&&checkMobile()&&mailCheck()&&addrCheck());
	 
	
	}

//아이디
function idCheck(){
  var id = document.getElementById("id_input");
  var idJ = /^[a-z]+[a-z0-9]{3,15}$/g; // 4자 이상 16자 이하, 영어 또는 숫자로 구성
  // ^ 이 규칙으로 문장을 시작한다. 
  // [문자 규칙을 입력]
  // {} = [] 안에 포함되는 문자가 최소 4개부터 12개까지
  
  if(id.value == ""){
    alert("아이디를 입력해주세요.");
    id.focus();
    id.value = "";
    return false;
  }
  else if(!idJ.test(id.value)){
    alert("아이디는 소문자 또는 숫자 조합 4~20자리 까지 입력가능합니다.");
    id.focus();
    id.value = "";
    return false;
  }
  else return true;
}

//비밀번호체크
function pwCheck(){
      var pw1 = document.getElementById("password_input");
      var pw2 = document.getElementById("passwordCk_input");
      var pwJ = /^[a-z0-9_-]{6,12}$/; // 단순 6~12자리

      // 아이디랑 비번이랑 같을 경우
      if (pw1.value == document.getElementById("id_input").value)
      {
        alert("아이디랑 비밀번호가 같으면 안됩니다.")
        pw1.focus();
        pw1.value = "";
        pw2.value = "";
        return false;
        
      } else if(pw1.value == ""){
    	    alert("비밀번호를 입력해주세요");
    	    pw1.focus();
    	    return false;
      }
      // 비번 길이와 영어소대문자 입력값이 올바른지
      // 정규표현식을 true false로 반환할거면 test
      else if (!pwJ.test(pw1.value))
      {
        alert("비밀번호는 최소6자에서 최대12자까지 입력해주세요");
        pw1.focus();
        pw1.value = "";
        pw2.value = "";
        return false;
      }
      // 비번 확인이 잘 안된 경우
      else if (pw1.value != pw2.value)
      {
        alert("비밀번호를 다시 확인해주세요")
        pw2.focus();
        pw2.value = "";
        return false;
      }
      else return true;
}

//이름
function nameCheck(){
  var name = document.getElementById("name_input");
  var nameJ = /^[가-힣a-zA-Z]+$/; // 한글 + 영문만
 
  if (name.value == null){
    alert("이름을 입력해주세요");
    name.focus();
    name.value = "";
    return false;
  }
  else if(!nameJ.test(name.value)){
    alert("이름은 한글 또는 영문을 입력해 주세요.")
    name.focus();
    name.value = "";
    return false;
  }
  else return true;
}

// 메일주소
function mailCheck(){
  var mail = document.getElementById("email_input");
  var mailJ = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/; // 길이까지 확실한 검증
  
  if(mail.value == ""){
    alert("이메일 주소를 입력해주세요.");
    mail.focus();
    mail.value = "";
    return false;
  }
  else if(!mailJ.test(mail.value)){
    alert("이메일 형식이 맞는지 확인바랍니다.");
    mail.focus();
    mail.value = "";
    return false;
  }
  else return true;  
}

//휴대폰번호
function checkMobile(){
  var mobile = document.getElementById("mobile_input");
  var mobileJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
  if(mobile.value == ""){
    alert("전화번호를 입력해주세요.");
    mobile.focus();
    mobile.value = "";
    return false;
  }
  else if(!mobileJ.test(mobile.value)){
    alert("전화번호 형식을 확인 바랍니다.");
    mobile.focus();
    mobile.value = "";
    return false;
  }
  else return true;  
}

//주소 유효성 판별 체크 
function addrCheck(){
  var zipcode = document.getElementById("zipcode_input").value;
  var addr = document.getElementById("address1_input").value;
  var addrbtn = document.getElementById("addrbtn").value;
  
  if(addr == "" || zipcode == ""){
    alert("주소를 입력해 주세요.");
    document.getElementById("addrbtn").focus();
    return false;
  }

  else return true;
}
$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".btn btn-primary").click(function(){
 
			$("#join_form").attr("action", "/member/join");
			$("#join_form").submit();
        
	});
});

//아이디 중복검사
$('#id_input').on("propertychange change keyup paste input", function(){

	//console.log("keyup 테스트");
	var id = $('#id_input').val();		// #id_input에 입력되는 값
	var idJ = /^[a-z]+[a-z0-9]{3,15}$/g;
	var data = {id : id}			    // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			 //console.log("성공 여부" + result);
			 //result != 'fail' && 
		if(result != 'fail' && idJ.test(id.value)){
			$('.id_input_re_1').css("display","inline-block");
			$('.id_input_re_2').css("display", "none");	
			idckCheck = true;
		} else if(id.value == "") {
			$('.final_id_ck').css("display","inline-block");
		} 
		else {
			$('.id_input_re_2').css("display","inline-block");
			$('.id_input_re_1').css("display", "none");	
			idckCheck = false;
		}
			
		}// success 종료
	}); // ajax 종료	

});// function 종료


</script>

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
