package shop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;

public class BbsDAO {

	public void insert(BbsDTO dto) throws Exception {
		
//		1. 드라이버 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		
//		2. db연결
		
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
//		3. sql문 객체화
		
		String sql = "insert into member values(?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getTitle());
		ps.setString(3, dto.getContent());
		ps.setString(4, dto.getUser());
		
//		4. sql문 실행 요청
		
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}
	
	public void delete(BbsDTO dto) throws Exception {
		
//		1. 드라이버 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		
//		2. db연결
		
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
//		3. sql문 객체화
		
		String sql = "delete from bbs where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());

//		4. sql문 실행 요청
		
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}
	
	public void update(BbsDTO dto) throws Exception {
		
//		1. 드라이버 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		
//		2. db연결
		
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
//		3. sql문 객체화
		
		String sql = "update bbs set content = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(2, dto.getId());
		ps.setString(1, dto.getContent());
		
//		4. sql문 실행 요청
		
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}

}
