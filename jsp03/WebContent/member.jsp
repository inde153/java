<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "top.jsp" %>
<hr color="blue" width="300">
<center>
	<table border="1" bordercolor="green">
		<tr align="center">
			<td = width="100" bgcolor = "pink">부서</td>
			<td = width="80" bgcolor = "yellow">이름</td>
			<td = width="80" bgcolor = "green">직급</td>
		</tr>
		<tr align="center">
			<td = width="100"><b><i>마케팅</i></b></td>
			<td = width="80">아무개</td>
			<td = width="80">과장</td>
		</tr>
		<tr align="center">
			<td = width="100"><b><i>교육</i></b></td>
			<td = width="80">홍길동</td>
			<td = width="80">대리</td>
		</tr>
		<tr align="center">
			<td = width="100"><b><i>기획</i></b></td>
			<td = width="80">임꺽정</td>
			<td = width="80">사원</td>
		</tr>
	</table>
</center>
<hr color="red" width="300">
<%@ include file="info.jsp" %>





</body>
</html>