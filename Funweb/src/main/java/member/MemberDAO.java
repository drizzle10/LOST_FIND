package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import board.BoardDTO;
import db.JdbcUtil;

public class MemberDAO {

	public boolean checkId(String id) {
		boolean isDuplicate = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection(); // 1,2단계
			
			String sql = "SELECT * FROM member WHERE id=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isDuplicate = true;
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - checkId()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return isDuplicate;
	}
	
	
	public int insertMember(MemberDTO member) {
		int insertCount = 0;
		
		Connection con = JdbcUtil.getConnection();
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO member VALUES (?,?,?,?,?,?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId()); // 아이디
			pstmt.setString(2, member.getPass()); // 패스워드
			pstmt.setString(3, member.getName()); // 이름
			pstmt.setString(4, member.getEmail()); // 이메일
			pstmt.setString(5, member.getPost_code()); // 우편번호
			pstmt.setString(6, member.getAddress1()); // 기본주소
			pstmt.setString(7, member.getAddress2()); // 상세주소
			pstmt.setString(8, member.getPhone()); // 전화번호
			pstmt.setString(9, member.getMobile()); // 폰번호

			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return insertCount;
	}
	

	public boolean loginMember(MemberDTO member) {
		boolean isLoginSuccess = false;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Connection con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM member WHERE id=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPass());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isLoginSuccess = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return isLoginSuccess;
	}
	
	public ArrayList<MemberDTO> selectMemberList(){
		ArrayList<MemberDTO> memberList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM member ORDER BY DATE DESC";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			memberList = new ArrayList<MemberDTO>();  
			
			while(rs.next()) {
				MemberDTO board = new MemberDTO();
				board.setId(rs.getString("id"));
				board.setPass(rs.getString("pass"));
				board.setName(rs.getString("name"));
				board.setEmail(rs.getString("email"));
				board.setPost_code(rs.getString("post_code"));
				board.setAddress1(rs.getString("address1"));
				board.setAddress2(rs.getString("address2"));
				board.setPhone(rs.getString("phone"));
				board.setMobile(rs.getString("mobile"));
				board.setDate(rs.getDate("date"));
				
				memberList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectMemberList()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return memberList;
	}
	
	
	public ArrayList<MemberDTO>  selectMyPage(String id){
		ArrayList<MemberDTO> myPage = new ArrayList<MemberDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection(); 
			
			String sql = "SELECT * FROM member WHERE id=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(id);
				member.setPass(rs.getString("pass"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setPost_code(rs.getString("post_code"));
				member.setAddress1(rs.getString("address1"));
				member.setAddress2(rs.getString("address2"));
				member.setPhone(rs.getString("phone"));
				member.setMobile(rs.getString("mobile"));
				member.setDate(rs.getDate("date"));
				
				myPage.add(member);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectMyPage()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return myPage;
	}
	
	
	public int deleteMember(String id){
		int deleteMemberCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = JdbcUtil.getConnection(); 
			
			String sql = "DELETE FROM member WHERE id=?";
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			deleteMemberCount = pstmt.executeUpdate();
		
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - deleteMember()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return deleteMemberCount;
	}
	
	
	public int updateMember(MemberDTO member) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int updateMemberCount = 0;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "UPDATE member SET pass=?,name=?,email=?,post_code=?,address1=?,address2=?,phone=?,mobile=? WHERE id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getPass());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getPost_code());
			pstmt.setString(5, member.getAddress1());
			pstmt.setString(6, member.getAddress2());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getMobile());
			pstmt.setString(9, member.getId());
			
			updateMemberCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - updateMember()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return updateMemberCount;
	}
	
	

	
}
