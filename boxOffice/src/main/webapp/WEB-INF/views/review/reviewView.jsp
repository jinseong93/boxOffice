<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/reviewView.css?update" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	function replyUpdate(rpNum) {
		var rpUpdate = document.getElementById("rpUpdate"+rpNum);
		rpUpdate.style.display = "block";
	}
	function nestedReply(rpNum) {
		var nestedReply = document.getElementById("nestedReply"+rpNum);
		nestedReply.style.display = "block";
	}
	function closeReply(rpNum) {
		var rpUpdate = document.getElementById("rpUpdate"+rpNum);
		rpUpdate.style.display = "none";
	}
	function closeNestedReply(rpNum) {
		var nestedReply = document.getElementById("nestedReply"+rpNum);
		nestedReply.style.display = "none";
	}
	function replyDel(rpNum) {
		var con = confirm("댓글을 삭제하시겠습니까?");
		if(con){
			location.href="replyDelete.rp?rvNum=${review.rvNum}&rpNum="+rpNum;
		}
	}
	function replyMasterDel(rpNum) {
		var con = confirm("댓글을 삭제하시겠습니까?");
		if(con){
			location.href="replyMasterDelete.rp?rvNum=${review.rvNum}&rpNum="+rpNum;
		}
	}
</script>
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
<body>
<!-- topNavBar -->
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<!-- 리뷰 메인화면 로고 -->
<div class="reviewLogo" style="width: 60%; margin-left:auto; margin-right:auto;">
	<a href="reviewMain.rv" style="font-size: 1.8em; text-decoration: none; color: black;">
	<img alt="logo" src="images/logo/boxoffice.png" height="60px" width="60px"> Rievew</a>
</div>

<!-- 메인테이블 -->
<div id="mainContainer" align="center">
	<table id="mainTable" class="table table-hover">
		<thead id="thead">
		<tr>
			<th colspan="3"><h1>${review.mvTitle }</h1></th>
			<th colspan="2"><c:if test="${review.mvGrade == 1 }">
					평점<br><font size="6">⭐1</font>
				</c:if> <c:if test="${review.mvGrade == 2 }">
					평점<br><font size="6">⭐2</font>
				</c:if>
				<c:if test="${review.mvGrade == 3 }">
					평점<br><font size="6">⭐3</font>
				</c:if>
				<c:if test="${review.mvGrade == 4 }">
					평점<br><font size="6">⭐4</font>
				</c:if> <c:if test="${review.mvGrade == 5 }">
					평점<br><font size="6">⭐5</font>
				</c:if>
				<c:if test="${review.mvGrade == 6 }">
					평점<br><font size="6">⭐6</font>
				</c:if>
				<c:if test="${review.mvGrade == 7 }">
					평점<br><font size="6">⭐7</font>
				</c:if> 
				<c:if test="${review.mvGrade == 8 }">
					평점<br><font size="6">⭐8</font>
				</c:if>
				<c:if test="${review.mvGrade == 9 }">
					평점<br><font size="6">⭐9</font>
				</c:if>
				<c:if test="${review.mvGrade == 10 }">
					평점<br><font size="6">⭐10</font>
				</c:if></th>
		</tr>
		</thead>
		<tbody id="tbody">
		<tr>
			<th style="width: 16%;">번호</th>
			<th style="width: 21%;">작성자</th>
			<th style="width: 21%;">작성일</th>
			<th style="width: 21%;">추천</th>
			<th style="width: 21%;">조회수</th>
		</tr>
		<tr>
			<td>${review.rvNum }</td>
			<td style="font-weight: bold;">${review.id }</td>
			<td>${review.rvDate }</td>
			<td>${review.rvLike }👍🏽</td>
			<c:if test="${review.rvReadCount >= 50}">
				<td style="font-weight: bold;">⚡️${review.rvReadCount }⚡️</td>
			</c:if>
			<c:if test="${review.rvReadCount <= 49}">
				<td >${review.rvReadCount }</td>
			</c:if>
		</tr>
		<tr>
			<th colspan="1">제목</th>
			<td colspan="5" id="rvTitle">${review.rvTitle }${mvCode}</td>
		</tr>
		<tr>
			<th colspan="1">내용</th>
			<td colspan="4" id="rvContent">${review.rvContent }</td>
		</tr>
		</tbody>
	</table>
</div>
<br>

<!-- 댓글 -->
<div id="replyContainer">
	<div id="rpView">
		<div id="rpViewHeader" align="center">댓글[${replyCount }]</div><br />
		<c:forEach items="${rpList2 }" var="reply">
		
		<!-- 대댓글 -->
			<c:if test="${reply.rpDel eq 'm' }">
				<span style="font-weight: bold;">관리자에 의해 삭제된 댓글입니다.</span>
				<hr>
			</c:if>
			<c:if test="${not empty rpList2}">
				<c:if test="${reply.rpDel eq 'n' }">
					<c:if test="${reply.ref_level > 0 }">
						<img src="images/reply/level.gif" style="height: 5" width="${reply.ref_level*20}">
						<span style="font-weight: bold;">${reply.id }</span>
						<c:if test="${reply.id eq review.id}">
							<span style="font-size: 0.8em; color: orange;">🧡작성자🧡</span>
						</c:if>
						<c:if test="${id eq 'master'}">
								<span onclick="replyMasterDel(${reply.rpNum})" id="updelbtn">관리자삭제</span>
						</c:if>
						<c:if test="${reply.id eq id }">
						<input type="hidden" value="${reply.rpNum }">
						<input type="hidden" value="${review.rvNum }">
							<span onclick="replyUpdate(${reply.rpNum})" id="updelbtn">&nbsp수정&nbsp</span>
							<span onclick="replyDel(${reply.rpNum})" id="updelbtn">삭제</span>
						</c:if><br />
						<img src="images/reply/level.gif" style="height: 5" width="${reply.ref_level*20}">
						<span id="rpContent">${reply.rpContent }</span><br>
						<img src="images/reply/level.gif" style="height: 5" width="${reply.ref_level*20}">
						<span id="rpDate">${reply.rpDate }&nbsp</span>
						<c:if test="${id ne null }">
							<span onclick="nestedReply(${reply.rpNum})" id="nestedReplyBtn">답글쓰기</span>
						</c:if>
					</c:if>
				</c:if>
			</c:if>
			
		<!-- 일반댓글 -->
			<c:if test="${reply.rpDel eq 'm' }">
				<span style="font-weight: bold;">관리자에 의해 삭제된 댓글입니다.</span>
				<hr>
			</c:if>
			<c:if test="${not empty rpList2}">
				<c:if test="${reply.ref_level == 0 }">
					<c:if test="${reply.rpDel eq 'n' }">
						<span style="font-weight: bold;">${reply.id }</span>
						<c:if test="${reply.id eq review.id}">
							<span style="font-size: 0.8em; color: orange;">🧡작성자🧡</span>
						</c:if>
						<c:if test="${id eq 'master'}">
								<span onclick="replyMasterDel(${reply.rpNum})" id="updelbtn">관리자삭제</span>
						</c:if>
						<c:if test="${reply.id eq id }">
						<input type="hidden" value="${reply.rpNum }">
						<input type="hidden" value="${review.rvNum }">
							<span onclick="replyUpdate(${reply.rpNum})" id="updelbtn">&nbsp수정&nbsp</span>
							<span onclick="replyDel(${reply.rpNum})" id="updelbtn">삭제</span>
						</c:if><br />
						<span id="rpContent">${reply.rpContent }</span><br>
						<span id="rpDate">${reply.rpDate }&nbsp</span>
						<c:if test="${id ne null }">
							<span onclick="nestedReply(${reply.rpNum})" id="nestedReplyBtn">답글쓰기</span>
						</c:if>
					</c:if>
				</c:if>
			</c:if>
			<br>
			
			
			<!-- 댓글 수정창 -->
			<div id="rpUpdate${reply.rpNum }" style="display: none;"><br>
				<form action="replyUpdate.rp?rvNum=${review.rvNum}&rpNum=${reply.rpNum }" method="post" class="rpUpdate_frm">
					<textarea rows="3" cols="115" name="rpContent" required="required" placeholder="수정할 댓글을 입력해 주세요 (최대 200자)" maxlength="200"  id="rpUpTA"></textarea>
					<span class="btn btn-outline-dark btn-sm" onclick="closeReply(${reply.rpNum})" id="subCloBtn">취소</span>
					<input class="btn btn-outline-dark btn-sm" type="submit" value="댓글수정" id="subCloBtn" style="margin-right: 5px;">
				</form>
				<br>
			</div>
			<!-- 대댓글 창 -->
			<div id="nestedReply${reply.rpNum }" style="display: none;"><br>
				<form action="replyWrite.rp?rvNum=${review.rvNum}&rpNum=0&ref=${reply.rpNum }&ref_level=1&ref_step=0" method="post" class="nestedReply_frm">
					<textarea rows="3" cols="115" name="rpContent" required="required" placeholder="답글을 입력해 주세요 (최대 200자)" maxlength="200"  id="rpUpTA"></textarea>
					<span class="btn btn-outline-dark btn-sm" onclick="closeNestedReply(${reply.rpNum})" id="subCloBtn">취소</span>
					<input class="btn btn-outline-dark btn-sm" type="submit" value="답글등록" id="subCloBtn" style="margin-right: 5px;">
				</form>
				<br>
			</div>
			<hr>
		</c:forEach>
	</div>	
	
<form action="replyWrite.rp?rvNum=${review.rvNum}&rpNum=0&ref=0&ref_level=0&ref_step=0" name="rpfrm" method="post">
	<input type="hidden" name="rvNum" value="${rvNum}" >
		<strong>${id }</strong>
		<div align="center">
			<c:if test="${id eq null }">
				<textarea rows="3" cols="115" name="rpContent" required="required" placeholder="로그인 후 사용 가능합니다." maxlength="200" id="rpTA"></textarea><br />
			</c:if>
			<c:if test="${id ne null }">
			<textarea rows="3" cols="115" name="rpContent" required="required" placeholder="댓글을 입력해 주세요 (최대 200자)" maxlength="200" id="rpTA"></textarea><br />
				<input class="btn btn-outline-dark btn-sm" id="rpBtn" type="submit" value="댓글등록" style="margin-left: 810px;"/><br><br>
			</c:if>
		</div>
</form>
</div>

<div id="button" align="center">
	<c:if test="${id eq 'master' }">
		<button class="btn btn-outline-dark btn-sm" onclick="reviewDelMaster()">삭제</button>
	</c:if>
	<c:if test="${id == review.id}">
		<button class="btn btn-outline-dark btn-sm" onclick="reviewDel()">삭제</button>
		<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewUpdateForm.rv?rvNum=${review.rvNum}&pageNum=${pageNum }'">수정</button>
	</c:if>
	<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewMain.rv?pageNum=${pageNum}&mvCode=${review.mvCode }'">목록</button>
	<button class="btn btn-outline-dark btn-sm" onclick="location.href='reviewLike.rv?rvNum=${review.rvNum}&id=${id}'">추천👍🏽</button>
</div>

<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
	<script type="text/javascript">
		function reviewDel() {
			var con = confirm("리뷰를 삭제 하시겠습니까?");
				if(con) {
					location.href="reviewDelete.rv?rvNum=${review.rvNum}";
				}
		}
		function reviewDelMaster() {
			var con = confirm("리뷰를 삭제 하시겠습니까?");
				if(con) {
					location.href="reviewDeleteMaster.rv?rvNum=${review.rvNum}";
				}
		}
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>