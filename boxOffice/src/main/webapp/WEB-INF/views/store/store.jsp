<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@include file="../public/sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style type="text/css">@import url("css/store.css");
@font-face
 {
	    font-family: 'Arita-dotum-Medium';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}	
	

</style>

</head>
<body>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
	<section>
		<div id="maincontent">
			<a id="title1"><img alt="로고" src="images/logo/boxoffice.png" height="70px" width="70px"> 스토어</a>
			
			<img class="hero_header" src="images/store/pop.jpg" alt="">
    
    <div class="products">
    
	<c:forEach  items="${list7 }" var="val">
      <a href="store2.st?pdCode=${val.pdCode }">
      <input type="hidden" name="image" value="${val.image }">
	        <img src="images/store/${val.image }">
	        <p>${val.pdName }</p>
	        <p class="price">${val.pdPrice}</p>
      </a>
      </c:forEach>
      
      
      
      
      <div class="clearfix"></div>
    </div>
    
		
		</div>
	</section>
<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>