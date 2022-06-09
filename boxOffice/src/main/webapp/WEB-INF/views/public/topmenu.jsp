<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/top.css?update" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="header">
		<div class="hd">
			<div class="ticket">
				<a href="ticketing.re">예매</a>
			</div>
			<div class="menu">
				<a href="#">영화정보</a>
				<ul class="menu2">
					<li><a href="movieNotyet.mv">예정</a></li>
					<li><a href="movieNow.mv">상영</a></li>
					<li><a href="movieClosed.mv">종료</a></li>
				</ul>
			</div>
			<div class="menu">
				<a href="#">게시판</a>
				<ul class="menu2">
					<li><a href="reviewMain.rv">리뷰</a></li>
					<li><a href="eventMain.ev">이벤트</a></li>
				</ul>
			</div>
		</div>
		<div class="logo">
			<a href="main.do"><img alt="로고" src="images/logo/boxoffice.png" height="80px" width="80px"></a>
		</div>
		<div class="menu">
			<a href="main.do" id="logoText">BoxOffice</a>
		</div>
		  <div class="menu">
				<a href="store.st">스토어</a>
			</div> 
		<div class="signin">	
			<c:if test="${empty id}">
				<a href="signInForm.do" class="login">로그인</a>
				<a href="signUpForm.si">회원가입</a>
			</c:if>
			<c:if test="${not empty id}">
				<c:if test="${id != 'master' }">
				<div class="login">
					"${id }"님
					<ul class="si">
						<li><a href="myinfo.si">마이페이지</a></li>
						<li><a href="logout.si">로그아웃</a></li>
					</ul>
				</div>
				</c:if>
			</c:if>
			<c:if test="${id eq 'master' }">
				<div class="login">
					관리자님
					<ul class="si">
						<li><a href="memberlist.si">회원목록</a></li>
						<li><a href="mvUplodeForm.mv">영화등록</a></li>
						<li><a href="eventWriteForm.ev">이벤트등록</a></li>
						<li><a href="logout.si">로그아웃</a></li>
					</ul>
				</div>
			</c:if>
		</div>
	</div>
</body>
</html>