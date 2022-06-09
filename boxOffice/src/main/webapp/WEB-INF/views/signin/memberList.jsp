<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/reviewMain.css?update" rel="stylesheet" type="text/css">
</head>
<style type="text/css">
	@font-face
    {
       font-family: 'Arita-dotum-Medium';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   body {font-family:  'Arita-dotum-Medium';}
</style>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<!-- Review NavBar-->
<!-- Review Table -->
<div id="mainContainer" align="center">
	<table id="mainTable" class="table table-hover">
		<thead id="thead">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>예매횟수</th>
				<th>게시글작성수</th>
				<th>등급</th>
				<th>가입날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${empty list }">
				<tr>
					<th colspan="7">회원이 없습니다.</th>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach items="${list }" var="member">
					<tr>
						<td>${member.id }</td>
						<c:if test="${member.memberDel == 'y' }">
							<th colspan="5">탈퇴한 회원 입니다.</th>
						</c:if>
						<c:if test="${member.memberDel != 'y'}">
							<td>${member.name }</td>
							<td>${member.ticketcount }</td>
							<td>${member.textcount }</td>
							<td>⭐${member.score }</td>
							<td>${member.reg_date }</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<br>
</div>
<br>
<br>
<br>
<div align="center">
	<!-- 앞에 보여줄 것이 있다 -->
	<c:if test="${startPage  > PAGE_PER_BLOCK }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='memberlist.si?pageNum=${startPage-1}'">이전</button>
	</c:if>
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='memberlist.si?pageNum=${i}'">${i}</button>
	</c:forEach>
	<!-- 아직 보여줄 것이 남아 있다 -->
	<c:if test="${endPage < totalPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='memberlist.si?pageNum=${endPage+1}'">다음</button>
	</c:if>
</div>
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>