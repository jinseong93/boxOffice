<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<link href="css/myInfo.css?update" rel="stylesheet" type="text/css">
<style type="text/css">
	@font-face
    {
       font-family: 'Arita-dotum-Medium';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   body {font-family:  'Arita-dotum-Medium';}
   #logoImage {width: 58%; margin-left:auto; margin-right:auto;}
</style>
<body>
<!-- 로고이미지 링크 -->
	<div id="logoImage">
		<a class="navbar-brand" href="myinfo.si" style="font-size: 1.8em; color: black;"><img alt="로고" src="images/logo/boxoffice.png" height="60px" width="60px"> MyPage</a>
	</div>
<div class="mymenu">
	<div class="mym">
		<ul>
			<li><a href="myReview.si">작성한 리뷰</a></li>
			<li><a href="reviewWriteForm.rv">리뷰 작성</a></li>
			<li><a href="myticket.si">예매 내역</a></li>
			<li><a href="ticketing.re">예매</a></li>
			<li><a href="logout.si">로그아웃</a></li>
			<li><a href="memberDelForm.si">회원탈퇴</a></li>
		</ul>
	</div> 
	<div id="info">
		<div class="mb">회원정보</div>
		<div class="my1">
			<div class="myinfo"><div>아이디</div><input type="text" value="${member.id }" readonly="readonly"></div>
			<div class="myinfo"><div>이름</div><input type="text" value="${member.name }" readonly="readonly"></div>
			<div class="myinfo"><div>전화번호</div><input type="text" value="${member.tel }" readonly="readonly"></div>
		</div>
		<div class="my2">
			<div class="myinfo"><div>작성글 수</div><input type="text" value="${member.textcount }" readonly="readonly"></div>
			<div class="myinfo"><div>예매 횟수</div><input type="text" value="${member.ticketcount }" readonly="readonly"></div>
			<div class="myinfo"><div>가입일</div><input type="text" value="${member.reg_date }" readonly="readonly"></div>
		</div>
		<div class="addr"><div>주소</div><input type="text" value="${member.address }" readonly="readonly"></div>
	</div>
</div>
<br />
<br />
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
