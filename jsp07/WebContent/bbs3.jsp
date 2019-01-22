<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
String id = request.getParameter("id");
String tel = request.getParameter("tel");

MemberDAO dao = new MemberDAO();
MemberDTO dto = new MemberDTO();

dao.update(dto);
</body>
</html>