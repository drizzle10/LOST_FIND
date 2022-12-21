<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="board.FileBoardDTO"%>
<%@page import="board.FileBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

//---------------------------- 파일 업로드 관련 처리 --------------------------------
String uploadPath = File.separator + "upload";
String realPath = request.getServletContext().getRealPath(uploadPath);
int fileSize = 1024 * 1024 * 10; 
MultipartRequest multi = new MultipartRequest(
	request, 
	realPath, 
	fileSize, 
	"UTF-8", 
	new DefaultFileRenamePolicy() 
);

FileBoardDTO board = new FileBoardDTO();
board.setNum(Integer.parseInt(multi.getParameter("num"))); 
board.setName(multi.getParameter("name"));
board.setPass(multi.getParameter("pass"));
board.setSubject(multi.getParameter("subject"));
board.setContent(multi.getParameter("content"));
String fileElement = multi.getFileNames().nextElement().toString();
board.setOriginal_file(multi.getOriginalFileName(fileElement)); 
board.setReal_file(multi.getFilesystemName(fileElement)); 
//out.println("원본 파일명 : " + board.getOriginal_file() + ", 실제 파일명 : " + board.getReal_file());

FileBoardDAO dao = new FileBoardDAO();
int updateCount = dao.updateFileBoard2(board);

if(updateCount > 0) { 
	// ---------------- 기존 파일 삭제 처리 --------------
	String realFile = multi.getParameter("real_file"); 
	System.out.println(realFile);
	
	File f = new File(realPath, realFile);
	if(f.exists()) {
		f.delete();
	}
	response.sendRedirect("findOwner.jsp?num=" + board.getNum());	
} else {
	%>
	<script>
		alert("글 수정 실패!");
		history.back();
	</script>
	<%
}
%>



