<%@page import="shop.BbsDTO"%>
<%@page import="shop.BbsDAO"%>
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
	String id = request.getParameter("id");
	String pw = request.getParameter("title");
	String name = request.getParameter("content");
	String tel = request.getParameter("user");
	
	BbsDAO dao1 = new BbsDAO();
	BbsDTO dto1 = new BbsDTO();
	
	dto.setId(id);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setUser(user);
	
	dao.insert(dto);
%>
회원가입이 신청되었습니다.

</body>
</html>