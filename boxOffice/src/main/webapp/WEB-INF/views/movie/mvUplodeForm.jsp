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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-light">
	<div class="container" align="center" style="width: 60%">
		<div class="py-5 text-center">
			<img class="d-block mx-auto mb-4" src="images/logo/boxoffice.png" alt="logo" width="75" height="75">
			<h2>영화 업로드</h2>
		</div>
		
		<div class="col-md-7 col-lg-8" id="idText">
			<form action="mvUplode.mv" method="post" enctype="multipart/form-data">
				<div class="row">
					<label for="id" class="form-label">제목</label>
					<div class="col-10">
						<input class="form-control" type="text" name="mvTitle" required="required" autofocus="autofocus">
					</div>
					<div class="col-2">
						<select class="form-control" name="mvTag">
							<option value="1">상영종료</option>
							<option value="2">상영중</option>
							<option value="3">상영예정</option>
						</select>
					</div>
				</div>
				<br />
				<div class="row">
					<label for="id" class="form-label">감독&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;주연배우</label>
					<div class="col-6">
						<input class="form-control" type="text" name="director" required="required">
					</div>
					<div class="col-6">
						<input class="form-control" type="text" name="majorActor" required="required">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="id" class="form-label">개봉일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;관람연령&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;러닝타임</label>
					<div class="col-4">
						<input class="form-control" type="date" name="openDate" required="required">
					</div>
					<div class="col-4">
						<input class="form-control" type="text" name="mvAge" required="required">
					</div>
					<div class="col-4">
						<input class="form-control" type="text" name="runningTime" required="required">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="id" class="form-label">장르&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;포스터</label>
					<div class="col-2">
						<input class="form-control" type="text" name="genre" required="required">
					</div>
					<div class="col-10">
						<input class="form-control" type="file" name="poster" required="required">
					</div>
				</div>
				<br />
				<div class="row">
					<label for="id" class="form-label">영화정보</label>
					<div class="col-12">
						<textarea class="form-control" style="resize: none;" name="mvInfo" rows="2" cols="30" placeholder="내용을 입력해 주세요." required="required"></textarea>
					</div>
				</div>
				<br />
				<div class="row">
					<label for="id" class="form-label">영화 줄거리</label>
					<div class="col-12">
						<textarea class="form-control" style="resize: none;" name="mvContent" rows="7" cols="30" placeholder="내용을 입력해 주세요." required="required"></textarea>
					</div>
				</div>
				<br />	
				<hr class="my-4">
				<button class="w-100 btn btn-lg" style="background: orange; font-size: 0.9em;" type="submit">업로드</button>
				<br />
				<br />
				<br />
				<br />
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