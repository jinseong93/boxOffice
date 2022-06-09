<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../public/sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket&Review</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">@import url("css/ticket3.css");
@font-face
 	 {
		    font-family: 'Arita-dotum-Medium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
	    }
	  #logoImage {width: 80%; margin-left:auto; margin-right:auto;}
</style>
</head>
<body>

<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>


<section>
<div id="maincontent">
		<!-- 로고이미지 링크 -->
	<div id="logoImage">
		<a class="navbar-brand" href="myinfo.si" style="font-size: 1.8em; color: black;"><img alt="로고" src="images/logo/boxoffice.png" height="60px" width="60px"> MyPage</a>&nbsp>&nbsp&nbsp&nbsp
		<a class="navbar-brand" href="myticket.si" style="font-size: 1.5em; color: black;"><img alt="로고" src="images/logo/boxoffice.png" height="30px" width="30px"> MyTicket</a>
	</div>	 
	<a id="title2">| 예약정보</a>
						
<div id="maincontent4">

<table class="boardtable">
				<thead>
					<tr>
						<th>티켓번호</th>
						<th width="40%">타이틀</th>
						<th>결제여부</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list1 }">
						<tr>
							<th colspan="5">예약내역이 없습니다.</th>
						</tr>
					</c:if>
					<c:if test="${not empty list1 }">
						<c:forEach var="val1" items="${list1 }">
							<tr>
								<td>${val1.ticketCode }</td>
						
						
									<td class="title">
										<!-- 답변글은 들여쓰기를 해야하므로 level이 0보다 크다 --> 
										<a href="myTicketView.si?ticketCode=${val1.ticketCode}&mvTitle=${val1.mvTitle }&nsCode=${val1.nsCode }">${val1.mvTitle }</a>
									</td>
									<td>${val1.rsCheck }</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>

</div>
			
<a id="title5">| 구매 내역</a>
<br><br>
<div id="maincontent5">

<table class="boardtable">
				<thead>
					<tr>
						<th>상품 번호</th>
						<th width="40%">상품명</th>
						<th>상품 가격</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${empty list2 }">
						<tr >
							<th colspan="4" class="hyun12">지난 예약내역이 없습니다.</th>
						</tr>
					</c:if>
					<c:if test="${not empty list2 }">
						<c:forEach var="val2" items="${list2 }">
							<tr>
								<td>${val2.ticketCode }</td>
									<td class="title">
										<!-- 답변글은 들여쓰기를 해야하므로 level이 0보다 크다 --> 
												<a href="myTicketView.si?ticketCode=${val2.ticketCode }&mvTitle=${val2.mvTitle }&nsCode=${val2.nsCode }">${val2.mvTitle }</a>
									</td>
									<td>${val2.rsCheck }</td>			
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>

</div>
			

		</div>
	</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>