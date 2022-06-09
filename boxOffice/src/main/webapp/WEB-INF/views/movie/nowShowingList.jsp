<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@include file="../public/sessionChk.jsp" %>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoxOffice</title>
<link rel="icon" href="images/logo/tricon.ico">
</head>
<body>
<section>
<div id="maincontent">
<a href="main.do"><img alt="로고" src="images/logo/T&R.png" height="30px" width="30px" id="logo"></a><a id="title1" href="masterpage.do">| T & R 관리페이지</a>
<div id="contentBox">
<div id="mcount">총:&nbsp;&nbsp;${total } 개</div>
<div id="memberlist">
<table id="resulttable">
<tr>
<td align="center">&nbsp;&nbsp; 예약 날짜</td><td align="center">예약 시간</td><td align="center">&nbsp;&nbsp; 지난 상영 체크</td>
</tr>
<tr>
<td colspan="4"><div id="space">&nbsp;</div></td>
</tr>
<c:forEach items="${list }" var="val">
<tr class="listM">
<td align="center">&nbsp;&nbsp;${val.showingDay }</td>
<td align="center">&nbsp;&nbsp; ${val.screenTime }</td>
<td align="center">&nbsp;&nbsp; <a href="nowShowingUpdate.mv?showingDay=${val.showingDay }&screenTime=${val.screenTime }&pchk=${val.pchk }">${val.pchk }</a></td>
</tr>
<tr>
<td colspan="4"><div id="space">&nbsp;</div></td>
</tr>

</c:forEach>
</table>
</div>

</div>
<div id="numberbar">
 <c:if test="${startPage>PAGE_PER_BLOK}">
 	<button onclick="location.href='nowShowingList.mv?pageNum=${startPage-1}'">이전</button>
</c:if>
 <c:forEach var="i" begin="${startPage }" end="${endPage }">
<c:if test="${currentPage==i }">
 <button onclick="location.href='nowShowingList.mv?pageNum=${i}'" disabled="disabled">${i }</button> 
</c:if>
	
 <c:if test="${currentPage!=i }">
 <button onclick="location.href='nowShowingList.mv?pageNum=${i}'">${i }</button> 
</c:if>
 </c:forEach>
<c:if test="${currentPage < totalPage}">
						<button class="next" onclick="location.href='nowShowingList.mv?pageNum=${currentPage + 1}'">
							다음
						</button>
					</c:if>
<c:if test="${endPage<totalPage }">
 		<button onclick="location.href='nowShowingList.mv?pageNum=${endPage+1}'">다음</button>
</c:if>
</div>

</div>
</section>
<footer><div id="footcontent"><jsp:include page="../public/bottom.jsp"></jsp:include></div></footer>
</body>
</html>