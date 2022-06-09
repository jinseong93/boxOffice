<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/eventMain.css?update" rel="stylesheet" type="text/css">
<style type="text/css">
	@font-face
    {
       font-family: 'Arita-dotum-Medium';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
</style>
</head>
<body>
	<!-- Top Navbar -->
	<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
	 <!-- eventNavBar -->
	<jsp:include page="eventNavBar.jsp"></jsp:include>
	
	<div class="mainContainer" align="center">
		<c:if test="${empty list }">
			<div class="noEvent" align="center">
				<h2>진행중인 이벤트가 없습니다.</h2>
			</div>
		</c:if>
		<c:if test="${not empty list }">
		<div class="row">
		<c:forEach var="event" items="${list }">
		<c:if test="${event.evDel eq 'y' }">
		<div class="col-12 col-md-6 col-lg-4" id="col">
			<div class="card" style="width: 20rem;">
				<a href="#"><img src="images/logo/boxoffice.png" class="card-img-top" alt="#" style="height: 208px;"></a>
					<div class="card-body">
						<a href="#" class="card-text">종료된 이벤트 입니다.</a><br />
				 	</div>
			</div>
			</div>
		</c:if>
		<c:if test="${event.evDel ne 'y' }">
			<div class="col-12 col-md-6 col-lg-4" id="col">
				<div class="card" style="width: 20rem;">
					<a href="eventView.ev?evNum=${event.evNum }&pageNum=${currentPage}"><img src="images/event/${event.evTitlePhoto }" class="card-img-top" alt="#"></a>
					<div class="card-body">
						<a href="eventView.ev?evNum=${event.evNum }&pageNum=${currentPage}" class="card-text" >${event.evTitle }</a><br />
						<a href="eventView.ev?evNum=${event.evNum }&pageNum=${currentPage}" class="evPeriod">${event.evStart } ~ ${event.evEnd }</a>
					 </div>
				</div>
			</div>
			</c:if>
		</c:forEach>
		</c:if>
		<br>
		<c:if test="${id eq 'master' }">
			<div align="center"><button class="btn btn-outline-dark btn-sm" onclick="location.href='eventWriteForm.ev'">이벤트작성</button></div>
		</c:if>
	</div>
	<br><br>
	<!-- 페이징 -->
	<div id="pagebar" align="center">
		<c:if test="${startPage > PAGE_PER_BLOCK }">
			<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventMain.ev?pageNum=${startPage-1}'">이전</button>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<c:if test="${currentPage== i }">
				<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventMain.ev?pageNum=${i}'"
					disabled="disabled">${i}</button>
			</c:if>
			<c:if test="${currentPage!= i }">
				<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventMain.ev?pageNum=${i}'">${i}</button>
			</c:if>
		</c:forEach>
		<!-- 보여줄 것이 남아있다 -->
		<c:if test="${endPage < totalPage }">
			<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventMain.ev?pageNum=${endPage+1}'">다음</button>
		</c:if>
		<!-- num=0 처음 쓴글 -->
	</div>
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>