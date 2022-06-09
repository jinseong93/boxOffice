<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result>0 }">
	<script type="text/javascript">
		alert("댓글이 삭제 되었습니다.")
		location.href = "reviewView.rv?rvNum=${rvNum}"
	</script>
</c:if>
<c:if test="${result==0} ">
	<script type="text/javascript">
		alert("댓글 삭제 실패 다시 시도해주세요.")
		history.back();
	</script>
</c:if>
</body>
</html>