<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<!-- 스크립트릿 : 자바코드 들어가는 부분 -->
<!-- 복사 : 컨트롤 + 알트 + 화살표 아래 -->
<!-- 이동 : 알트 + 화살표 아래 -->
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");
String gender = request.getParameter("gender");
String addr = request.getParameter("addr");
String[] hobby = request.getParameterValues("hobby");
String collect = "";
for(String h : hobby){
	collect = collect+ "<br>" + h + "";
}
String word = request.getParameter("word");
%>
<!-- 표현식 출력용 -->
당신이 입력한 ID : <%= id %><br>
당신이 입력한 PW : <%= pw %><br>
당신이 입력한 NAME : <%= name %><br>
당신이 입력한 TEL : <%= tel %><br>
당신이 입력한 GENDER : <%= gender %><br>
당신이 입력한 ADDR : <%= addr %><br>
당신이 입력한 HOBBY : <%= collect %><br>
당신이 입력한 WORD : <%= word %><br>

	</body>
</html>