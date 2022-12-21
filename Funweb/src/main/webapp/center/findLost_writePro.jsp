<%@page import="board.FileBoardDAO"%>
<%@page import="board.FileBoardDTO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
// String name = request.getParameter("name");
// String pass = request.getParameter("pass");
// String subject = request.getParameter("subject");
// String content = request.getParameter("content");

// out.println(name + ", " + pass + ", " + subject + ", " + content);

String uploadPath = "/upload";

int fileSize = 1024 * 1024 * 10;

ServletContext context = request.getServletContext();

String realPath = context.getRealPath(uploadPath);

// out.println(realPath);

MultipartRequest multi = new MultipartRequest(request, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());

FileBoardDTO board = new FileBoardDTO();

board.setName(multi.getParameter("name"));
board.setPass(multi.getParameter("pass"));
board.setSubject(multi.getParameter("subject"));
board.setContent(multi.getParameter("content"));

String fileElement = multi.getFileNames().nextElement().toString();

board.setOriginal_file(multi.getOriginalFileName(fileElement));
board.setReal_file(multi.getFilesystemName(fileElement));

// out.println("원본 파일명 : " + board.getOriginal_file() + ", " + "실제 파일명 : " + board.getReal_file());
FileBoardDAO dao = new FileBoardDAO();

int insertCount = dao.insertFileBoard(board);

if(insertCount > 0){
	response.sendRedirect("findLost.jsp");
} else {%>
	<script>
		alert("글쓰기 실패");
		history.back();
	</script>
<%
}
%>