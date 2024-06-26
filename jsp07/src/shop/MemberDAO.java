package shop;

//JAVA-DB-Connectivity(JDBC)
import java.sql.*;
public class MemberDAO {
	
	public void insert(MemberDTO dto) throws Exception {
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
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());
		
//		4. sql문 실행 요청
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}
	public void delete(MemberDTO dto) throws Exception {
//		1. 드라이버 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		
//		2. db연결
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		
//		3. sql문 객체화
		String sql = "delete from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());

		
//		4. sql문 실행 요청
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}
	public void update(MemberDTO dto) throws Exception {
//		1. 드라이버 셋팅
		Class.forName("com.mysql.jdbc.Driver");
		
//		2. db연결
		String url = "jdbc:mysql://localhost:3306/shop";
		String user = "root";
		String password = "1234";
		
		Connection con = DriverManager.getConnection(url, user, password);
		
		
//		3. sql문 객체화
		String sql = "update member set tel = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(2, dto.getId());
		ps.setString(1, dto.getTel());
		
//		4. sql문 실행 요청
		ps.executeUpdate();
		
		con.close();
		ps.close();
	}
}
