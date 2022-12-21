package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import db.JdbcUtil;

public class FileBoardDAO {
	public int selectBoardListCount() {
		int boardListCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT COUNT(*) FROM file_board";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardListCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardListCount()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardListCount;
	}
	
	public int selectBoardListCount(String keyword) {
		int boardListCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT COUNT(*) FROM file_board WHERE subject LIKE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + keyword + "%"); 
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardListCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardListCount()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardListCount;
	}
	
	public ArrayList<FileBoardDTO> selectBoardList(int startRow, int listLimit) {
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board ORDER BY num DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, listLimit);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>();
			
			while(rs.next()) {
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardList()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardList;
	}
	
	public ArrayList<FileBoardDTO> selectBoardList(int startRow, int listLimit, String keyword) {
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board WHERE subject LIKE ? ORDER BY num DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + keyword + "%"); 
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, listLimit);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>();
			
			while(rs.next()) {
				// 1개 레코드를 저장할 FileBoardDTO 객체 생성 후 데이터 저장
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardList()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return boardList;
	}
	
	public ArrayList<FileBoardDTO> selectRecentFileBoardList(){
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board ORDER BY num DESC LIMIT 5";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>(); // BoardDTO 객체 저장 전용 ArrayList 객체 생성됨
			
			while(rs.next()) {
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectRecentFileBoardList()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return boardList;
	}
	
	public int insertFileBoard(FileBoardDTO board) {
		int insertCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null, pstmt2 = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			int num = 1;
			
			String sql = "SELECT MAX(num) FROM file_board";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt(1) + 1;
			}
			sql = "INSERT INTO file_board VALUES (?,?,?,?,?,?,?,?,now())";
			pstmt2 = con.prepareStatement(sql);
			pstmt2.setInt(1, num);
			pstmt2.setString(2, board.getName());
			pstmt2.setString(3, board.getPass());
			pstmt2.setString(4, board.getSubject());
			pstmt2.setString(5, board.getContent());
			pstmt2.setString(6, board.getOriginal_file());
			pstmt2.setString(7, board.getReal_file());
			pstmt2.setInt(8, 0);

			insertCount = pstmt2.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - insertFileBoard()");
			e.printStackTrace();
		} finally {
			// DB 자원 반환
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(pstmt2);
			JdbcUtil.close(con);
		}
		return insertCount;
	}
	
	public void updateReadcount(int num) { 
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "UPDATE file_board SET readcount=readcount+1 WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQL 구문 오류 발생! - updateReadcount()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
	}

	public FileBoardDTO selectFileBoard(int num) {
		FileBoardDTO board = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "SELECT * FROM file_board WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board = new FileBoardDTO();
				board.setNum(num);
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectFileBoard()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return board;
	}
	
	public String selectRealFile(int num) {
		String realFile = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "SELECT real_file FROM file_board WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				realFile = rs.getString("real_file");
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectRealFile()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return realFile;
	}
	
	public int deleteFileBoard(int num, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int deleteCount = 0;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "DELETE FROM file_board WHERE num=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, pass);
			
			deleteCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - deleteFileBoard()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return deleteCount;
	}
	
	public int updateFileBoard(FileBoardDTO board) {
		int updateCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "UPDATE file_board " +
							"SET subject=?,content=?,original_file=?,real_file=?" +
							"WHERE num=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getSubject());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getOriginal_file());
			pstmt.setString(4, board.getReal_file());
			pstmt.setInt(5, board.getNum());
			pstmt.setString(6, board.getPass());
			
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - updateFileBoard()");
			e.printStackTrace();
		} finally {
			// DB 자원 반환
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return updateCount;
	}
	
	
	
	
	
	public int selectBoardListCount2() {
		int boardListCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT COUNT(*) FROM file_board2";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardListCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardListCount2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardListCount;
	}
	
	public int selectBoardListCount2(String keyword) {
		int boardListCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT COUNT(*) FROM file_board2 WHERE subject LIKE ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + keyword + "%"); 
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				boardListCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardListCount2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardListCount;
	}
	
	public ArrayList<FileBoardDTO> selectBoardList2(int startRow, int listLimit) {
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board2 ORDER BY num DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, listLimit);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>();
			
			while(rs.next()) {
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardList2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return boardList;
	}
	
	public ArrayList<FileBoardDTO> selectBoardList2(int startRow, int listLimit, String keyword) {
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board2 WHERE subject LIKE ? ORDER BY num DESC LIMIT ?,?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + keyword + "%"); 
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, listLimit);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>();
			
			while(rs.next()) {
				// 1개 레코드를 저장할 FileBoardDTO 객체 생성 후 데이터 저장
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectBoardList2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return boardList;
	}
	
	public ArrayList<FileBoardDTO> selectRecentFileBoardList2(){
		ArrayList<FileBoardDTO> boardList = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			String sql = "SELECT * FROM file_board2 ORDER BY num DESC LIMIT 5";
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			boardList = new ArrayList<FileBoardDTO>(); // BoardDTO 객체 저장 전용 ArrayList 객체 생성됨
			
			while(rs.next()) {
				FileBoardDTO board = new FileBoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
				
				boardList.add(board);
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectRecentFileBoardList2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return boardList;
	}
	
	public int insertFileBoard2(FileBoardDTO board) {
		int insertCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null, pstmt2 = null;
		ResultSet rs = null;
		
		con = JdbcUtil.getConnection();
		
		try {
			int num = 1;
			
			String sql = "SELECT MAX(num) FROM file_board2";
			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt(1) + 1;
			}
			sql = "INSERT INTO file_board2 VALUES (?,?,?,?,?,?,?,?,now())";
			pstmt2 = con.prepareStatement(sql);
			pstmt2.setInt(1, num);
			pstmt2.setString(2, board.getName());
			pstmt2.setString(3, board.getPass());
			pstmt2.setString(4, board.getSubject());
			pstmt2.setString(5, board.getContent());
			pstmt2.setString(6, board.getOriginal_file());
			pstmt2.setString(7, board.getReal_file());
			pstmt2.setInt(8, 0);

			insertCount = pstmt2.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - insertFileBoard2()");
			e.printStackTrace();
		} finally {
			// DB 자원 반환
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(pstmt2);
			JdbcUtil.close(con);
		}
		return insertCount;
	}
	
	public void updateReadcount2(int num) { 
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "UPDATE file_board2 SET readcount=readcount+1 WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("SQL 구문 오류 발생! - updateReadcount2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
	}

	public FileBoardDTO selectFileBoard2(int num) {
		FileBoardDTO board = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "SELECT * FROM file_board2 WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				board = new FileBoardDTO();
				board.setNum(num);
				board.setName(rs.getString("name"));
				board.setPass(rs.getString("pass"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setOriginal_file(rs.getString("original_file"));
				board.setReal_file(rs.getString("real_file"));
				board.setReadcount(rs.getInt("readcount"));
				board.setDate(rs.getTimestamp("date"));
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectFileBoard2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return board;
	}
	
	public String selectRealFile2(int num) {
		String realFile = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "SELECT real_file FROM file_board2 WHERE num=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				realFile = rs.getString("real_file");
			}
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - selectRealFile2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return realFile;
	}
	
	public int deleteFileBoard2(int num, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		int deleteCount = 0;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "DELETE FROM file_board2 WHERE num=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, pass);
			
			deleteCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - deleteFileBoard2()");
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		return deleteCount;
	}
	
	public int updateFileBoard2(FileBoardDTO board) {
		int updateCount = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = JdbcUtil.getConnection();
			
			String sql = "UPDATE file_board2 " +
							"SET subject=?,content=?,original_file=?,real_file=?" +
							"WHERE num=? AND pass=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, board.getSubject());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getOriginal_file());
			pstmt.setString(4, board.getReal_file());
			pstmt.setInt(5, board.getNum());
			pstmt.setString(6, board.getPass());
			
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 구문 오류 발생! - updateFileBoard2()");
			e.printStackTrace();
		} finally {
			// DB 자원 반환
			JdbcUtil.close(pstmt);
			JdbcUtil.close(con);
		}
		
		return updateCount;
	}
	
}
