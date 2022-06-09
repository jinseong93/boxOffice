<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="../public/sessionChk.jsp" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket&Review</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<section>
<div id="maincontent">
<a href="main.do"><img alt="로고" src="images/logo/T&R.png" height="30px" width="30px" id="logo"></a><a id="title1" href="masterpage.do">| T & R 관리페이지</a>
<%-- <div id="sidemenu"><jsp:include page="../public/sidemenu.jsp"></jsp:include> </div> --%>
<div id="contentBox">
<div id="mcount">총:&nbsp;&nbsp;${total } 개</div>
<div id="memberlist">
<table id="resulttable">
<tr>
<td align="center">&nbsp;&nbsp; 예약코드</td><td align="center">티켓코드</td><td align="center">&nbsp;&nbsp; 아이디</td>
<td align="center">&nbsp;&nbsp; 최종영화값</td><td align="center">&nbsp;&nbsp; 결제여부</td><td align="center">&nbsp;&nbsp; 시청여부</td>
</tr>
<tr>
<td colspan="4"><div id="space">&nbsp;</div></td>
</tr>
<c:forEach items="${list }" var="val">
<tr class="listM">
<td align="center">&nbsp;&nbsp;${val.rsCode }</td>
<td align="center">&nbsp;&nbsp; ${val.ticketCode }</td>
<td align="center">&nbsp;&nbsp; ${val.id }</td>
<td align="center">&nbsp;&nbsp; ${val.finalPrice }</td>
<td align="center">&nbsp;&nbsp;<a href="reservationUpdate.mv?ticketCode=${val.ticketCode }&rsCheck=${val.rsCheck }&id=${val.id }">${val.rsCheck }</a></td>
<td align="center">&nbsp;&nbsp;<a href="reservationUpdate2.mv?ticketCode=${val.ticketCode }&shCheck=${val.shCheck }">${val.shCheck }</a></td>
</tr>
<tr>
<td colspan="4"><div id="space">&nbsp;</div></td>
</tr>

</c:forEach>
</table>

</div>
<div id="searchbox">
<form action="searchReservationList.mv">
<select name="whereM" id="whereM"><option value="id">아이디</option><option value="movieTitle">영화제목</option><option value="ticketCode">티켓번호</option> </select> 검색&nbsp;:&nbsp;<input type="text" id="Msearch" name="Msearch"><input type="submit" value="검색"></form></div>

</div>
<div id="numberbar">
 <c:if test="${startPage>PAGE_PER_BLOK}">
 	<button onclick="location.href='reservationList.mv?pageNum=${startPage-1}'">이전</button>
</c:if>
 <c:forEach var="i" begin="${startPage }" end="${endPage }">
<c:if test="${currentPage==i }">
 <button onclick="location.href='reservationList.mv?pageNum=${i}'" disabled="disabled">${i }</button> 
</c:if>
	
 <c:if test="${currentPage!=i }">
 <button onclick="location.href='reservationList.mv?pageNum=${i}'">${i }</button> 
</c:if>
 </c:forEach>
<c:if test="${currentPage < totalPage}">
						<button class="next" onclick="location.href='reservationList.mv?pageNum=${currentPage + 1}'">
							다음
						</button>
					</c:if>
<c:if test="${endPage<totalPage }">
 		<button onclick="location.href='reservationList.mv?pageNum=${endPage+1}'">다음</button>
</c:if>
</div>
</div>
</section>
<%-- <footer><div id="footcontent"><jsp:include page="../public/bottom.jsp"></jsp:include></div></footer> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
  