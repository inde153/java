<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
	%>
	당신의 id: <%= id %><br>
	당신의 pw: <%= pw %><br>
	당신의 name: <%= name %><br>
	당신의 tel: <%= tel %><br>
	<%
	
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "insert into member values('" + id + "' , '" +
											        pw + "' , '" +
											        name + "' , '" +
											        tel + "')";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.executeUpdate();
		
	
/* 		//1. connector 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		out.print("1.connector셋팅 성공<br>");
		//2. db 연결
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password);
		out.print("2. db연결 성공<br>");
		//3. sql 결정(SQL 객체화)
		String sql = "insert into member values ('500','500','Kim','010')";
		PreparedStatement ps = con.prepareStatement(sql);
		out.print ("3. sql문 객체화 성공<br>");
		//4. sql 실행요청
		ps.executeUpdate();
		out.print("4.sql문 실행 요청 성공<br>"); */
		
	
	%>






</body>
</html>