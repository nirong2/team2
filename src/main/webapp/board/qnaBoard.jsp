<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(function(){
// 			$('#qnaBtn').on("click",fucntion(){
			$('#qnaBtn').click(function(){
				var form1 =$("#qnaForm").serialize();
				
				console.log(form1);
				
				$.ajax({
					type: "post",
					url: "./QnaBoardAction.bo",
					data: form1,
					dateType: 'json',
					success: function(){					
						alert("문의사항을 접수하였습니다.");
						window.close();
					},
					error: function (request, status, error) {
	                    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});				
			});
		});
	</script>
</head>
<body>
	<h1>faqBoard.jsp</h1>
	
	<fieldset>
		<form method="post" name = "fr" id="qnaForm">
<%-- 		<input type="hidden" name="user_id" value="${param.user_id }"> --%>
		<table id="qna">
					<tr>
						<td>제목 :</td>
						<td colspan="2"><input type="text" id="wInput" name="subject">
						</td>
					</tr>
					<tr>
						<td>내용 :</td>
						<td colspan="2">
							<textarea rows="" cols="" id="wInput" name="content"></textarea>
						</td>
					</tr>

				</table>

				<div id="qnaSubmit">
					<input type="button" value="완료" class="btn" id="qnaBtn">
					<input type="button" value="취소" onclick="window.close();">
				</div>
		</form>
	</fieldset>
</body>
</html>