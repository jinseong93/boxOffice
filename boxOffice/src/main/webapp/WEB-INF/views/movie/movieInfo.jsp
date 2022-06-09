<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link href="css/movieInfo.css?update" rel="stylesheet" type="text/css">

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

<link rel="icon" href="images/logo/boxoffice.png">
</head>
<body>


<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>

<section>
<div id="maincontent">
<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="60px" width="60px"> Movies</a>
<form action="">
      <c:if test="${movie.mvTag eq 1}">
            <a id="category1" class="mymenu" href="movieNotyet.mv">상영 예정</a>
      <a id="category2" class="mymenu" href="movieNow.mv">현재 상영중</a>
      <a id="category3" class="mymenu" href="movieClosed.mv">상영 종료</a>
      </c:if>
      <c:if test="${movie.mvTag eq 2}">
            <a id="category1" class="mymenu" href="movieNotyet.mv">상영 예정</a>
      <a id="category2" class="mymenu" href="movieNow.mv">현재 상영중</a>
      <a id="category3" class="mymenu" href="movieClosed.mv">상영 종료</a>
      </c:if>
      <c:if test="${movie.mvTag eq 3}">
            <a id="category1" class="mymenu" href="movieNotyet.mv">상영 예정</a>
      <a id="category2" class="mymenu" href="movieNow.mv">현재 상영중</a>
      <a id="category3" class="mymenu" href="movieClosed.mv">상영 종료</a>
      </c:if>
    </form>
    <br><br>
<a id="title2"> MovieInfo </a>
<div id="movieInfoBox">
<a href=https://www.youtube.com/watch?v=W7edvITC9g4><img alt="포스터" src="images/posters/${movie.poster }" width="360"></a>
<div align="center" style="font-size: 0.8em; color: red;">* 포스터를 클릭하시면 유튜브 동영상으로 이동합니다</div>
</div>
<br>
<div id="movieList" style="top:20px; font-size:100%">
<table class="movieTable2">
<tbody>
<tr>
<td width="500px"><b>제목: </b>${movie.mvTitle }</td>
</tr>
<tr>
<td><b>장르: </b>${movie.genre }</td>
</tr>
<tr>
<td><b>감독: </b> ${movie.director }</td>
</tr>
<tr>
<c:if test="${movie.mvGrade == '0' }">
	<td><b>평점: </b>미개봉</td>
</c:if>
<c:if test="${movie.mvGrade != '0' }">
	<td><b>평점: </b> ⭐${movie.mvGrade }</td>
</c:if>
</tr>
<tr>
<td><b>주연 배우: </b> ${movie.majorActor }</td>
</tr>
<tr>
<td><b>상영시간: </b> ${movie.runningTime }</td>
</tr>
<tr>
<td><b>개봉일: </b> ${movie.openDate }</td>
</tr>
<tr>
<td><b>영화 정보: </b></td>
</tr>
<tr>
<td><pre id="textarea">${movie.mvInfo }</pre></td>
</tr>
<tr>
<td><b>줄거리: </b></td> 
</tr>
<tr>
<td><pre id="textarea">${movie.mvContent }</pre></td>
</tr>
<tr height="50px" ></tr>
<tr>
	<c:if test="${val.mvTag eq 1}">
    <td><a href="reviewNowClosedList.rv?mvCode=${movie.mvTitle }" style="width:300px; text-align:center" class="button2"><b> Review </b></a></td>
    </c:if>
    <c:if test="${val.mvTag eq 2}">
    <td><a href="ticketing2.re?mvCode=${movie.mvCode }" style="width:300px; text-align:center" class="button2"><b> 예매하기 </b></a>
    <td><a href="reviewNowClosedList.rv?mvCode=${movie.mvTitle }" style="width:300px; text-align:center" class="button2"><b> Review </b></a></td>
    </c:if>
</tr>
</tbody>
</table>
</div>

</div>
</div>
</section>




<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>