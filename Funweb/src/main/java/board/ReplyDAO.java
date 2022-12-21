package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import db.JdbcUtil;

public class ReplyDAO {
	public int insertReply(ReplyDTO reply) {
		int insertCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "INSERT INTO reply VALUES(null,?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, reply.getBoardType());
			pstmt.setInt(2, reply.getRefNum());
			pstmt.setString(3, reply.getName());
			pstmt.setString(4, reply.getContent());
			
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return insertCount;
	}
	
	public List<ReplyDTO> selectReplyList(int num) {
		List<ReplyDTO> replyList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM reply WHERE refNum=? ORDER BY num DESC";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			replyList = new ArrayList<ReplyDTO>(); // ArrayList -> List(업캐스팅)
			
			while(rs.next()) {
				ReplyDTO reply = new ReplyDTO();
				reply.setNum(rs.getInt("num"));
				reply.setBoardType(rs.getString("boardType"));
				reply.setRefNum(rs.getInt("refNum"));
				reply.setName(rs.getString("name"));
				reply.setContent(rs.getString("content"));
				reply.setDate(rs.getTimestamp("date"));
				
				replyList.add(reply);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return replyList;
	}
	
	public int deleteReply(int num, String sId) {
		int deleteCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "DELETE FROM reply WHERE num=? AND name=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, sId);
			
			deleteCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return deleteCount;
	}
}














