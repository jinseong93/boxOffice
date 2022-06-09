<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result>0 }">
		<script type="text/javascript">
			alert("시청 여부 변경이 완료되었습니다");
			location.href="reservationList.mv";
		</script>
	</c:if>
	<c:if test="${result<=0 }">
		<script type="text/javascript">
			alert("변경실패");
			history.go(-1);
		</script>
	</c:if>
</body>
</html>   