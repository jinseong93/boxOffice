<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/eventView.css?update" rel="stylesheet" type="text/css">
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
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<body>
<!-- 이벤트 메인화면 로고 -->
<div class="eventLogo" style="width: 60%; margin-left:auto; margin-right:auto; margin-bottom: 20px;">
	<a href="eventMain.ev" style="font-size: 1.8em; text-decoration: none; color: black;">
	<img alt="logo" src="images/logo/boxoffice.png" height="60px" width="60px"> Event</a>
</div>
<!-- 메인테이블 -->
<div id="mainContainer" align="center">
	<table id="mainTable" class="table table-hover">
		<thead id="thead">
			<tr>
			<th style="width: 25%;">번호</th>
			<th style="width: 25%;">작성자</th>
			<th style="width: 25%;">작성일</th>
			<th style="width: 25%;">조회수</th>
		</tr>
		</thead>
		<tbody id="tbody">
		<tr>
			<td>${event.evNum }</td>
			<td>${event.id }</td>
			<td>${event.evDate }</td>
			<td>${event.evReadCount }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td id="textOrange">${event.evTitle }</td>
			<th>기간</th>
			<td id="textOrange">${event.evStart }~${event.evEnd }</td>
		</tr>
		<tr>
			<td colspan="4"></td>
		</tr>
		<tr>
			<th colspan="4">내용</td>
		</tr>
		<tr>
			<td colspan="4"><img src="images/event/${event.evContentPhoto }"></img></td>
		</tr>
		</tbody>
	</table>
		
	<br>
	<div id="button" align="center">
		<c:if test="${id eq 'master' }">
			<button class="btn btn-outline-dark btn-sm" onclick="reviewDel()">삭제</button>
			<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventUpdateForm.ev?evNum=${event.evNum}'">수정</button>
		</c:if>
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='eventMain.ev?pageNum=${pageNum}'">목록</button>
	</div>
</div>
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
	<script type="text/javascript">
		function reviewDel() {
			var con = confirm("리뷰를 삭제 하시겠습니까?");
				if(con) {
					location.href="eventDelete.ev?evNum=${event.evNum}";
				}
		}
	</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>