<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>Insert title here</title>

<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
label {
margin-left : 10px;
	text-align: left;
    color: #F95700;
}
@font-face
{
	font-family: 'Arita-dotum-Medium';
	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
	font-weight: normal;
	 font-style: normal;
}
body {font-family:  'Arita-dotum-Medium';}
</style>

<!-- Custom styles for this template -->
<link href="form-validation.css" rel="stylesheet">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/checkout/">
<script type="text/javascript" src="js/jquery.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;
         
                document.getElementById("engAddress").value = data.addressEnglish;
                       
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
    function chk1() {
		if (frm.password.value != frm.password2.value) {
			alert("암호와 암호확인이 서로 다릅니다");
			frm.password.value = "";
			frm.password2.value = "";
			frm.password.focus();
			return false;
		}
	}
    
    function chk2() {
		if (!frm.id.value) {
			alert("아이디를 입력해주세요");
			frm.id.focus();
			return false;
		}
		$.post('confirm.do', "id=" + frm.id.value, function(data) {
			$('#err').html(data);
		});

	}
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-light">
	<div class="container" align="center" style="width: 60%">
		<div class="py-5 text-center">
			  <a href="main.do"><img class="d-block mx-auto mb-4" src="images/logo/boxoffice.png" alt="logo" width="75" height="75"></a>
			<h2>회원가입</h2>
		</div>
		
		<div class="col-md-7 col-lg-8" id="idText">
			<form action="signUp.si" name="frm" onsubmit="return chk1()">
				<div class="row">
					<label for="id" class="form-label">아이디</label>
					<div class="col-9">
						<input class="form-control" type="text" name="id" id="id" required="required"
							autofocus="autofocus" placeholder="ID(4~10)자리" minlength="5" maxlength="10">
					</div>
					<div class="col-3">
						<input class="form-control" type="button" value="중복확인" id="idchk" onclick="chk2()">
					</div>
				</div>
				<div id="err" style="color: red;"></div>	
				<br />
				<div class="row">
					<label for="password" class="form-label">비밀번호</label>
					<div id="passwordText" class="col-12">
						<input class="form-control" type="password" name="password" id="password" required="required" 
							placeholder="비밀번호(6~15)자리" minlength="6" maxlength="15">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="password2" class="form-label">비밀번호 확인</label>
					<div id="passwordText" class="col-12">
						<input class="form-control" type="password" name="password2" id="password2" required="required"
							placeholder="비밀번호 확인(6~15)자리" minlength="6" maxlength="15">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="name" class="form-label">이름</label>
					<div id="nameText" class="col-12">
						<input class="form-control" type=text name="name" id="name" required="required" >
					</div>
				</div>
				<br />
				<div class="row">
					<label for="tel" class="form-label">번호</label>
					<div id="telText" class="col-2">
						<select class="form-control" name="tel1" id="tel" required="required">
						<option value="010">010
						<option value="010">011
						<option value="010">016
						<option value="010">010 
					</select>
					</div>
					<div id="telText" class="col-5">
						<input class="form-control" type="number" name="tel2" id="tel" required="required" minlength="3" maxlength="4">
					</div>
					<div id="telText" class="col-5">
						<input class="form-control" type="number" name="tel3" id="tel" required="required" minlength="4" maxlength="4">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="postcode" class="form-label">주소</label>
					<div class="col-9">
						<input class="form-control"  type="text" name="postcode" id="postcode" placeholder="우편번호">
					</div>
					<div class="col-3">
						<input class="form-control"  type="button" onclick="execDaumPostcode()" value="우편번호 찾기">
					</div>
				</div>
				
				<div class="row">
					<div class="col-6">
						<input class="form-control"  type="text" name="roadAddress" id="roadAddress" placeholder="도로명주소">
						<input class="form-control"  type="hidden" id="jibunAddress" placeholder="지번주소">
					</div>
					<div class="col-6">	
						<input class="form-control"  type="text" name="detailAddress" id="detailAddress" placeholder="상세주소">
						<input class="form-control"  type="hidden" id="extraAddress" placeholder="참고항목">
					</div>
				</div>

				<hr class="my-4">



				<button class="w-100 btn btn-lg" style="background: orange; font-size: 0.9em;" type="submit">회원가입</button>
			</form>
		</div>
	</div>



	<script src="/docs/5.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="form-validation.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>