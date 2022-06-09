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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">@import url("css/ticket.css");
@font-face
 {
	    font-family: 'Arita-dotum-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}

</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){ 
		var people=1;   
		var count;
		$("select[name=people]").change(function(){
			people=$(this).val(); //value값 가져오기
			  console.log($("select[name=people] option:selected").text());
			});
	    $("input[type='checkbox']").on("click" , function(){ 
	      count = $("input:checked[type='checkbox']").length; 
	             if(count > people){ 
	            $(this).prop("checked" , false); 
	                    //또는 this.checked=false;
	            alert("선택하신 인원 수 이상은 예매하실 수 없습니다."); 
	            count=count-1;
	          }
	        
	    }); 
	    $('#chkbutton').on("click",function(){
	    	if(count != people){
	   		 alert("선택하신 인원수와 선택하신 좌석수가 일치하지 않습니다");
	   		 return false;
	   	}
	    });
	});

</script>

<style>

		.max {
  				font-fize : 3px;
  				color : red;
 		}
        .seat {
        	
            width: 40px;
            height: 40px;
        }
        
        .clicked {
            background-color: red;
            color: white;
        }
    </style>


</head>
<body>

	<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>

	<section>
		<div id="maincontent">
			<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px"> 인원 및 좌석선택</a>
			<div id="movieNowBox">
			
			<form action="ticketing6.re" method="post" name="frm">
			<div id="hyun">
				<p>영화 이름&nbsp;: &nbsp;${movie.mvTitle }</p>
				<input type=hidden value=${movie.mvCode } name="mvCode">
				<input type=hidden value="${movie.mvTitle }" name="mvTitle">
				<p>영화 값&nbsp;:&nbsp; ${movie.mvPrice  }원</p>
				<input type=hidden value=${movie.mvPrice } name="mvPrice">
				<p>영화관 위치&nbsp;:&nbsp; ${theater.ttLoc } ${theater.ttName }</p>
				<input type=hidden value=${theater.ttLoc } name="ttLoc">
				<input type=hidden value=${theater.ttName } name="ttName">
				
				
				<p>상영관&nbsp;:&nbsp; ${screenNum }관</p>
				<input type=hidden value=${screenNum } name="screenNum">
				
				<p>날짜&nbsp;: &nbsp;${showingDay }</p>
				<input type=hidden value="${showingDay }" name="showingDay">
				
				<input type=hidden value=${nowShowing.nsCode } name="nsCode">
				
				
				<p>상영 시작 시간&nbsp;:&nbsp; ${screenTime.screenTime }</p>
				<input type=hidden value=${screenTime.screenTime } name="screenTime">
				
				<br>
				<div>옵션 선택 &nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
				
					<select class="age" name="age">
						<option value="0">선택</option>
						<option value="1">청소년</option>
						<option value="2">일반</option>
						<option value="3">경로</option>
						<option value="4">우대</option>
					</select>
				</div>
				<div>인원 선택 &nbsp; : &nbsp;&nbsp;&nbsp;&nbsp;
				
					<select class="people" name="people" id="people">
						<option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
				</div>
				<p class="max">* 최대 5명까지 가능합니다.</p>
			</div>
			<br><br><br><br>
			
			<div style="text-align:center;">
				<img alt="" src="images/posters/screen.jpg" width="560">
			</div>
			
			<br>
				<table style=" margin : auto;">
					<c:forEach items="${arr }" begin="0" end="10" step="1" var="i">
					<tr>
						<c:forEach begin="1" end="19" step="1" var="j">
							<td>
								<input type="checkbox" name="seat" value="${i }${j}" onClick="count_ck(this);">${i }${j}
							</td>
						</c:forEach>
					</tr>
					</c:forEach>
				</table>
			<c:forEach items="${list6 }" var="dto">
				<script type="text/javascript">
					var checked=document.getElementsByName("seat");
					var size=document.getElementsByName("seat").length;
					for(var i=0; i<size; i++)
						{
						if(checked[i].value==$'{dto.seats}'){
							checked[i].disabled=true;
						}
						}
				</script>
			</c:forEach>
		
			<br>
		
			<input type="hidden" name="rsCode" value="${rsCode}">
		
			<br>
			<div>결제 방법 선택 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
				<select name="rsCheck" required="required">
					<option></option>
					<option>무통장 입금 :카카오뱅크1111-333-4444-5555</option>
					<option>포인트 결제</option>
				</select>
			</div>
			
			<br>
			<br>
			<button  class="button" id="chkbutton"><b>결제</b></button>
		
		</form>
		
		
			</div>
		</div>
	</section>
	
	<footer><div id="footer"><jsp:include page="../public/footer4.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>

</html>