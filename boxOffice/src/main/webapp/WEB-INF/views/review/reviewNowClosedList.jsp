<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/reviewMain.css?update" rel="stylesheet" type="text/css">
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
</head>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<!-- Review NavBar-->
<jsp:include page="reviewNavBar.jsp"></jsp:include>
<!-- Review Table -->
<div id="mainContainer" align="center">
	<table id="mainTable" class="table table-hover">
		<thead id="thead">
			<tr>
				<th>번호</th>
				<th>리뷰제목</th>
				<th>영화제목</th>
				<th>작성자</th>
				<th>평점</th>
				<th>추천</th>
				<th>조회수</th>
			</tr>
		</thead>
			<tbody>
				<c:if test="${empty list }">
				<tr>
					<th colspan="8">게시글이 없습니다.</th>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach items="${list }" var="review">
					<tr>
						<td>${review.rvNum }</td>
						<c:if test="${review.rvDel == 'y' }">
							<th colspan="6">삭제된 게시글 입니다.</th>
						</c:if>
						<c:if test="${review.rvDel == 'm' }">
							<th colspan="6">관리자에 의해 삭제된 게시글 입니다.</th>
						</c:if>
						<c:if test="${review.rvDel != 'y' and review.rvDel != 'm' }">
							<c:if test="${review.rpCount ne 0 }">
								<td width="30%">
									<a href="reviewView.rv?rvNum=${review.rvNum }&pageNum=${currentPage}" id="rvTitle">${review.rvTitle }</a>
									<a href="reviewView.rv?rvNum=${review.rvNum }&pageNum=${currentPage}" id="rpCount">[${review.rpCount }]</a>
								</td>
							</c:if>
							<c:if test="${review.rpCount eq 0 }">
								<td width="30%"><a href="reviewView.rv?rvNum=${review.rvNum }&pageNum=${currentPage}" id="rvTitle">${review.rvTitle }</a></td>
							</c:if>
								<td id="mvTitle">${review.mvTitle }</td>
								<td>${review.id }</td>
								<td>⭐${review.mvGrade }</td>
								<td>${review.rvLike }</td>
								<c:if test="${review.rvReadCount >= 50}">
									<td style="font-weight: bold;">⚡️${review.rvReadCount }⚡️</td>
								</c:if>
								<c:if test="${review.rvReadCount <= 49}">
									<td>${review.rvReadCount }</td>
								</c:if>
							</c:if>
						</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	<br>
	<button class="btn btn-outline-dark btn-sm" onclick="return chk()" style="float: right;">리뷰작성</button>
</div>
<br>
<br>
<br>
<div align="center">
	<!-- 앞에 보여줄 것이 있다 -->
	<c:if test="${startPage  > PAGE_PER_BLOCK }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewNowClosedList.rv?pageNum=${startPage-1}&mvCode=${mvCode }'">이전</button>
	</c:if>
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewNowClosedList.rv?pageNum=${i}&mvCode=${mvCode }'">${i}</button>
	</c:forEach>
	<!-- 아직 보여줄 것이 남아 있다 -->
	<c:if test="${endPage < totalPage }">
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewNowClosedList.rv?pageNum=${endPage+1}&mvCode=${mvCode }''">다음</button>
	</c:if>
</div>
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>

<script type="text/javascript">
	function chk() {
		if (${id == null}) {
			alert("로그인 후 작성 가능합니다.");
			location.href="signInForm.do";
		} else {
			location.href="reviewWriteForm.rv";
		}
	}
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>