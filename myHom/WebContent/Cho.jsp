<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<%
		String food = request.getParameter("food");
		out.print("좋아하는 음식 :" + food);


%>
	</body>
</html>