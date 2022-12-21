<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int num = Integer.parseInt(request.getParameter("num"));
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

BoardDAO dao = new BoardDAO();

BoardDTO board = new BoardDTO();
board.setNum(num);
board.setName(name);
board.setPass(pass);
board.setSubject(subject);
board.setContent(content);

int updateCount = dao.updateBoard(board);

if(updateCount > 0){
	response.sendRedirect("notice_content.jsp?num=" + num);
} else {
%>
	<script>
		alert("글 수정 실패");
		history.back();
	</script>
<%} %>