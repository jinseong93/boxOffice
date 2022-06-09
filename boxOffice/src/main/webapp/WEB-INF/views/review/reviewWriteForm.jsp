<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/reviewWriteForm.css?update" rel="stylesheet" type="text/css">
<style type="text/css">
	@font-face
    {
       font-family: 'Arita-dotum-Medium';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff') format('woff');
       font-weight: normal;
       font-style: normal;
   }
   body {font-family:  'Arita-dotum-Medium';}
</style>
</head>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<body>
	<div id="mainContainer" align="center" >
		<form action="reviewWrite.rv" name="rvForm" id="rvForm" >
		<input type="hidden" name="rvNum" value="${rvNum }">
		<input type="hidden" name="rvLike" value="${rvLike }">
		<input type="hidden" name="rvReadCount" value="${rvReadCount }">
		<input type="hidden" name="id" value="${id }">
			<table id="mainTable" class="table table-hover">
				<caption class="caption">리뷰작성</caption>
				<tr>
					<th width="15%">제목</th>
					<td><input class="form-control" type="text" name="rvTitle" required="required" autofocus="autofocus"
						size="80" placeholder="제목을 입력하세요. (20자)" maxlength="20"></td>
				</tr>
				<tr>
					<th width="15%">작성자</th>
					<td style="color: #F95700; text-align: center;">${id }</td>
				</tr>
				<tr>
					<th width="15%">영화제목</th>
					<td ><select class="form-control" name="mvTitle" required="required" style="text-align: center; font-weight: bold;">
								<option value="">영화선택</option>
								<option value="스파이더맨 노 웨이 홈">스파이더맨 노 웨이 홈</option>
								<option value="극장판 주술회전 0">극장판 주술회전 0</option>
								<option value="더 배트맨">더 배트맨</option>
								<option value="씽2게더">씽2게더</option>
								<option value="이상한 나라의 수학자">이상한 나라의 수학자</option>
								<option value="문폴">문폴</option></select></td>
				</tr>
				<tr>
					<th width="15%">평점</th>
					<td><input class="form-control" type="range" min="1" max="10" class="slider" id="myRange" name="mvGrade">
						<div id="value" align="center" style="font-weight: bold; font-size: 1.2em;"></div></td>
				</tr>
				<tr>
					<th width="15%">내용<br><sup>(<span id="nowByte">0</span>/1000bytes)</sup></th>
					<td><textarea  class="form-control" rows="8" cols="82" name="rvContent" required="required"
						placeholder="리뷰 내용을 입력하세요. (1000bytes)" onkeyup="fn_checkByte(this)"></textarea></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input class="btn btn-outline-dark btn-sm" type="submit" value="리뷰작성" /></td>
				</tr>
			</table>
		</form>
	</div>
	<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script type="text/javascript">
	var slider = document.getElementById("myRange");
	var output = document.getElementById("value");
	output.innerHTML = "⭐" + slider.value + "⭐";
	
	slider.oninput = function() {
	    output.innerHTML ="⭐" + this.value + "⭐";
	}
	
		//textarea 바이트 수 체크하는 함수
	    function fn_checkByte(obj){
	        const maxByte = 1000; //최대 1000바이트
	        const text_val = obj.value; //입력한 문자
	        const text_len = text_val.length; //입력한 문자수

	        let totalByte=0;
	        for(let i=0; i<text_len; i++){
	            const each_char = text_val.charAt(i);
	            const uni_char = escape(each_char) //유니코드 형식으로 변환
	            if(uni_char.length>4){
	                // 한글 : 2Byte
	                totalByte += 2;
	            }else{
	                // 영문,숫자,특수문자 : 1Byte
	                totalByte += 1;
	            }
	        }
	        
	        if(totalByte>maxByte){
	            alert('최대 1000Byte까지만 입력가능합니다.');
	            document.getElementById("nowByte").innerText = totalByte;
	            document.getElementById("nowByte").style.color = "red";
	        }else{
	            document.getElementById("nowByte").innerText = totalByte;
	            document.getElementById("nowByte").style.color = "white";
	        }
	    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>