<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="./css/event.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	
</script>
</head>

<body>
	<!-- 상단 바 고정 -->
	<header>
		<jsp:include page="/inc/topBar.jsp"></jsp:include>
	</header>
	<!-- 상단 바 고정 -->
	<h2>FAQ 글 삭제 페이지</h2>

	<h3>삭제하시겠습니까?</h3>

	<form action="./enfBoardDelete.bo?category=0&&user_id=${user_id}"
		method="post">
		<input type="hidden" name="event_bno" value="${param.event_bno }">

		<input type="submit" value="예" class="btn"> <input
			type="button" value="아니요" class="btn" onclick="window.close();">
	</form>


</body>
</html>