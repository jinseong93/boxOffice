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
<style type="text/css">@import url("css/ticketreview3.css");
@font-face
 {
	    font-family: 'Arita-dotum-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}	
	#button {
	margin-top : 70%;
	}
</style>
</head>
<body>

<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>


<section>
<div id="maincontent">
		 <a id="title2"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px">예약 정보</a>
						
		<table id="ticketView" style="margin-left:10%; border : solid 1px;" >
		<tr id="ticketcontent">
			<td  colspan="2"><a href="movieInfo.mv?mvCode=${movie.mvCode }"><img alt="포스터" src="images/posters/${movie.poster }" width="320" ></a><br><br><br></td>
		</tr>
				<tr>
					<th>티켓번호 </th><td> ${ticketCode }</td>
				</tr>
				<tr>
					<th>영화 제목</th> <td> ${movie.mvTitle }</td>
				</tr>
				<tr>
					<th>영화관 </th><td>${theater.ttLoc}:${theater.ttName}</td>
				</tr>
				<tr>
					<th>상영날짜</th><td>${nowshowing.showingDay }</td>
				</tr>
				<tr>
					<th>상영시간</th><td> ${screen.screenTime }</td>
				</tr>
				<tr>
					<th>상영관</th><td> ${screen.screenNum}</td>
				</tr>
				
		</table>
			<div id="payinfo"><table id="payInfoTable"><tr><td>무통장 입금 : 카카오뱅크 :1111-333-4444-5555 </td><td>${reservation.finalPrice }</td></tr></table></div>
			<div id="main1">
		 		<button  class="main" onclick="location.href='main.do'" ><b>메인으로 가기</b></button>
		 		<button class="main" onclick="location.href='myticket.si'"><b>예약 현황</b></button>
			</div>
		</div>
		<br>
	</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>