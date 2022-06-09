<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/reviewMain.css?update" rel="stylesheet" type="text/css">
</head>
<body>
<div id="reviewNavBar" align="center">
<nav class="navbar navbar-expand-sm navbar-light" >
  <div class="container-fluid">
 	<a class="navbar-brand" href="reviewMain.rv" style="font-size: 1.8em;"><img alt="로고" src="images/logo/boxoffice.png" height="60px" width="60px"> Review</a>
    <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent"><!-- 오른쪽 정렬하기 flex-grow-0 -->
      <ul class="navbar-nav text-right"><!-- 오른쪽 정렬하기 text-right-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            현재상영작
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=1">스파이더맨 노 웨이 홈</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=4">극장판 주술회전 0</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=6">더 배트맨</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=9">씽2게더</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=16">이상한 나라의 수학자</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=18">문폴</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            상영종료영화
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=3">반지의 제왕: 반지 원정대</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=5">이터널스</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=7">조커</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=8">덩케르트</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=11">잭 스나이더의 저스티스 리그</a></li>
            <li><a class="dropdown-item" href="reviewNowClosedList.rv?mvCode=15">어벤져스 : 엔드게임</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
</div>
</body>
</html>