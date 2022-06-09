<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoxOffice</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="css/movieNotyet.css?update" rel="stylesheet" type="text/css">
<style type="text/css">
@font-face {
	font-family: 'Arita-dotum-Medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<section>
	<div id="maincontent">
		<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="60px" width="60px"> Movies</a>
		<form action="">
			<a id="category1" class="mymenu" href="movieNotyet.mv">상영 예정</a>
			<a id="category2" class="mymenu" href="movieNow.mv">현재 상영중</a>
			<a id="category3" class="mymenu" href="movieClosed.mv">상영 종료</a>
		</form>
		<a id="title2"> 상영 예정 </a>
		<div id="movieNotyetBox">
			<br><br><br>
			<c:forEach items="${list }" var="val">
			
				<div id="movieList${val }">
					<table class="movieTable">
						<tbody>
							<tr>
								<td rowspan="7" width="280px"><a
									href="movieInfo.mv?mvCode=${val.mvCode }"><img alt="포스터"
										src="images/posters/${val.poster }" width="240"></a></td>
								<td width="420px">제목: ${val.mvTitle }</td>
							</tr>
							<tr>
								<td>개봉일: ${val.openDate }</td>
							</tr>
							<tr>
								<td>감독: ${val.director }</td>
							</tr>
							<tr>
								<td>평점: 미개봉</td>
							</tr>
							<tr>
								<td>주연: ${val.majorActor }</td>
							</tr>
							<tr>
								<td>상영시간: ${val.runningTime }</td>
							</tr>
							<tr>
							</tr>
							<tr>
								<br><br>
							</tr>
						</tbody>
					</table>
				</div>
			</c:forEach>
			<br><br><br>
			<div align="center">
				<c:if test="${empty list }">${"등록된 영화가 존재하지 않습니다" }<br>
				</c:if>
				
		
				<c:if test="${startPage>PAGE_PER_BLOK}">
					<button class="btn btn-outline-dark btn-sm" onclick="location.href='movieNotyet.mv?pageNum=${startPage-1}'">이전</button>
				</c:if>
				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<c:if test="${currentPage==i }">
						<button class="btn btn-outline-dark btn-sm" onclick="location.href='movieNotyet.mv?pageNum=${i}'" disabled="disabled">${i }</button>
					</c:if>

					<c:if test="${currentPage!=i }">
						<button class="btn btn-outline-dark btn-sm" onclick="location.href='movieNotyet.mv?pageNum=${i}'">${i }</button>
					</c:if>
				</c:forEach>
				<c:if test="${currentPage < totalPage}">
					<button class="btn btn-outline-dark btn-sm" onclick="location.href='movieNotyet.mv?pageNum=${currentPage + 1}'">다음</button>
				</c:if>
				<c:if test="${endPage<totalPage }">
					<button class="btn btn-outline-dark btn-sm" onclick="location.href='movieNotyet.mv?pageNum=${endPage+1}'">다음</button>
				</c:if>
			</div>
		</div>
	</div>
</section>

<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>