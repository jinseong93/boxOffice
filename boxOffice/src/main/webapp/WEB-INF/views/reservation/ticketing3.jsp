<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../public/sessionChk.jsp" %>
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

<style>
  .clicked {
    color: black;
	background-color: white;
  }
</style>

<script type="text/javascript">
 var showingDay = document.getElementById("day-button${val.showingDay }");
console.log(showingDay);
   
function goTicketing4(){	
	location.href="ticketing4.re?mvCode="+${movie.mvCode}+"&ttCode="+${theater.ttCode }+
			"&screenCode="+${val.screenCode }+"rsCode=0&screenTime="+{val.screenTime}+"showingDay="+showingDay;
} 

</script>


</head>
<body>


	<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>




	<section>
		<div id="maincontent">
			<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px"> 날짜 선택</a>
		
			<div class="reserve-container">
		        <div class="movie-part">
		            	<div class="reserve-title">영화</div>
		            <c:forEach items="${list }" var="val">            
		            	<div class="movie-list-container">
		          		  <button class="movie-list-button" onclick="location.href='ticketing2.re?mvCode=${val.mvCode }'">${val.mvTitle }</button>
		            	</div>            
		            </c:forEach>
		        </div>
		        <div class="theater-part">
		            <div class="reserve-title">극장</div>            
		            <div class="theater-container">
		            	<c:forEach items="${list2 }" var="val">
		            		<div class="theater-wrapper">            	
								<div class="theater-location-wrapper">
		            				<button class="theater-location">${val.ttLoc }</button>
		            				<button class="theater-place" onclick="location.href='ticketing3.re?mvCode=${movie.mvCode}&ttCode=${val.ttCode }'">${val.ttName }</button>
		            			</div>             	   
		            		</div>                                                    
		           		</c:forEach>
		           	</div>
		                                      
		        </div>
		        <div class="day-part">
		        		<div class="reserve-title">날짜</div>        	
		        		<c:forEach items="${list4 }" var="val">        	
		        			<div id= "day-container" class="day-container">
		        				<button class="day-button" onclick="location.href='ticketing4.re?mvCode=${movie.mvCode}&ttCode=${theater.ttCode }&showingDay=${val.showingDay }'">${val.showingDay }</button>
		        			</div>        	
		        		</c:forEach>        	
		        </div>        
		        <div class="time-part">
		       	 <div class="reserve-title">시간</div>        
				</div>       
		
			</div> 
		</div>
	</section>
            
           
<script>
	var dayButton = document.getElementsByClassName("day-button");
	
	function handleClick(event) {
		console.log(event.target);
	  	console.log(event.target.classList);
	  	if (event.target.classList[1] === "clicked") {
		    event.target.classList.remove("clicked");
		  } else {
		    for (var i = 0; i < dayButton.length; i++) {
		    	dayButton[i].classList.remove("clicked");
		    }
		    event.target.classList.add("clicked");
		  } 
	}
	
	function init(){
		for (var i = 0; i < dayButton.length; i++) {
			  dayButton[i].addEventListener("click", handleClick);
		  }
	}
	
	init();

</script>


<footer><div id="footer"><jsp:include page="../public/footer2.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>