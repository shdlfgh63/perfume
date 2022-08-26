<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>아이디 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="../member/find_id.do" method="post" onsubmit="return allCheck()">
				<div class="w3-center w3-large w3-margin-top">
					<h3>Find ID</h3>
				</div>
				<div>
					<p>
						<label>Email</label>
						<input class="w3-input" type="text" id="email_input" name="email" placeholder="가입하신 이메일 주소를 입력해주세요." required>
					</p>
				
					<p class="w3-center">
						<button type="submit" id=findBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">아이디 찾기</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취 소</button>
					</p>
				</div>
			</form>
		</div>
	</div>
<script> 

function allCheck(){
	
	  return (mailCheck());
	 
	
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

</script>

</body>

</html>
