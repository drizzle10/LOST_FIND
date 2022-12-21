<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

BoardDTO board = new BoardDTO();

board.setName(name);
board.setPass(pass);
board.setSubject(subject);
board.setContent(content);

BoardDAO dao = new BoardDAO();

int insertCount = dao.insertBoard(board);

if(insertCount > 0){
	response.sendRedirect("notice.jsp");
} else {%>
	<script>
		alert("글쓰기 실패");
		history.back();
	</script>
<%
}
%>