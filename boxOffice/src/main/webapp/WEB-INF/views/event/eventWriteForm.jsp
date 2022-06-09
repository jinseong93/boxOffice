<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/eventWriteForm.css?update" rel="stylesheet" type="text/css">
</head>
<header><div id="headbar"><jsp:include page="../public/topmenu.jsp"></jsp:include></div></header>
<body>
	<div id="mainContainer" align="center">
		<form action="eventWrite.ev" name="frm" id="frm" method="post" enctype="multipart/form-data" onsubmit="return chk()">
		<input type="hidden" name="evNum" value="${evNum }">
		<input type="hidden" name="evReadCount" value="${evReadCount }">
		<input type="hidden" name="id" value="${id }">
			<table id="mainTable" class="table table-hover">
				<caption class="caption">이벤트작성</caption>
				<tr>
					<th width="18%">제목</th>
					<td colspan="3"><input class="form-control" type="text" name="evTitle" required="required" autofocus="autofocus"
						size="80" placeholder="제목을 입력하세요. (15자)" maxlength="15"></td>
				</tr>
				<tr>
				<tr>
					<th>작성자</th>
					<td colspan="3">${id }</td>
				</tr>
				<tr>
					<th width="18%">이벤트시작일</th>
					<td><input class="form-control" type="date" name="evStart" id="evStart" required="required"></td>
 					<th width="18%" >이벤트종료일</th>
					<td><input class="form-control" type="date" name="evEnd" id="evEnd" required="required"/></td>
				</tr>
				<tr>
					<th width="18%">제목사진</th>
					<td><input class="form-control" type="file" name="evTitlePhoto" accept="image/*" required="required"/>
					<th width="18%">내용사진</th>
					<td><input class="form-control" type="file" name="evContentPhoto" accept="image/*"/>
				</tr>
				<tr>
					<th width="18%">내용<br><sup>(<span id="nowByte">0</span>/1000bytes)</sup></th>
					<td colspan="3"><textarea class="form-control" rows="8" cols="82" name="evContent" required="required"
						placeholder="이벤트 내용을 입력하세요. (1000bytes)" onkeyup="fn_checkByte(this)"></textarea></td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input class="btn btn-outline-dark btn-sm" type="submit" value="이벤트작성" /></td>
				</tr>
			</table>
		</form>
	</div>
	<footer><div id="footer"><jsp:include page="../public/footer.jsp"></jsp:include></div></footer>
<script type="text/javascript">
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
		
		function chk() {
 			// date형식의 evStart, evEnd를 input 받아서 받은 값 문자열로 저장
/*  			var s = document.getElementById("evStart").value;
 	        document.getElementById('evStart').innerTEXT= s;
	        
	        var e = document.getElementById("evEnd").value;
	        document.getElementById('evEnd').innerTEXT= e; */
	        
	        // 이벤트 시작일 보다 종료일이 빠르면 false
			if (frm.evStart.value > frm.evEnd.value) {
				alert("시작일보다 종료일이 더 빠릅니다 다시 입력해주세요."); frm.evStart.focus();
				frm.evStart.value = ""; frm.evEnd.value = "";
				return false;
				}
		}
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>