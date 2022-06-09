<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
<link href="css/main.css?update" rel="stylesheet" type="text/css">
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<br />
<br />
<div class="slideshow-container">
<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
 	 <iframe width="560" height="315" src="https://www.youtube.com/embed/h3rKe6DdC18?autoplay=1&mute=1" title="YouTube video player" 
 	 		frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
 	 		gyroscope; picture-in-picture" allowfullscreen>
 	 </iframe>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <iframe src="https://www.youtube.com/embed/mI9oyFMUlfg?autoplay=1&mute=1 " title="YouTube video player" 
				frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
				encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
		</iframe>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <iframe src="https://www.youtube.com/embed/9Z79vlm3zW8?autoplay=1&mute=1" title="YouTube video player" 
  			frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; 
  			gyroscope; picture-in-picture" allowfullscreen>
  </iframe>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<br />
<br />
<br />
<br />
<br />
<p class=rank>박스오피스</p>
<div id="mv">
	<c:forEach var="movie" items="${list }">
		<div class="movie">
			<div class="mvimg"><img alt="포스터" src="images/posters/${movie.poster }" height="320px" width="223px" class="img">
			<span class="mvtk"><a href="ticketing.re">예매하기</a></span>
			<span class="mvinfo"><a href="movieInfo.mv?mvCode=${movie.mvCode }">상세정보</a></span></div>
			<span class="mvtg">${movie.mvTitle } ⭐ ${movie.mvGrade }</span>
		</div>
	</c:forEach>
</div>
<div id="mainEv">
<div class="evTitle">이벤트</div>
<div class="event_wrap">
		<div><a href="eventView.ev?evNum=14&pageNum=2"><img alt="" src="images/event/eventContent3.jpg" height="511px" width="296px" class="img01"></a></div>
		<div><a href="eventView.ev?evNum=10&pageNum=2"><img alt="" src="images/event/eventTitle8.jpg" height="250px" width="450px" class="img02"></a></div>
		<div><a href="eventView.ev?evNum=12&pageNum=2"><img alt="" src="images/event/eventTitle.jpg" height="250px" width="350px" class="img03"></a></div>
		<div><a href="eventView.ev?evNum=7&pageNum=3"><img alt="" src="images/event/eventTitle4.jpg" height="250px" width="246px" class="img04"></a></div>
		<div><a href="eventView.ev?evNum=13&pageNum=2"><img alt="" src="images/event/eventTitle2.jpg" height="250px" width="300px" class="img05"></a></div>
		<div><a href="eventView.ev?evNum=1&pageNum=4"><img alt="" src="images/event/eventTitle9.jpg" height="250px" width="241px" class="img06"></a></div>
</div>
</div>
<br />
<br />
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</body>
</html> 
