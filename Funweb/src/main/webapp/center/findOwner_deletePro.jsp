<%@page import="java.io.File"%>
<%@page import="board.FileBoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int num = Integer.parseInt(request.getParameter("num"));
String pass = request.getParameter("pass");

FileBoardDAO dao = new FileBoardDAO();

String realFile = dao.selectRealFile2(num); // 레코드 삭제 전 미리 파일명 조회 필요

int deleteCount = dao.deleteFileBoard2(num, pass);

if(deleteCount > 0){

	String uploadPath = File.separator + "upload";
	String realPath = request.getServletContext().getRealPath(uploadPath);

	File f = new File(realPath, realFile);

	if(f.exists()){
		boolean isDeleteSuccess = f.delete();
	}
	
	response.sendRedirect("findOwner.jsp");
	
} else { %>
	<script>
		alert("글 삭제 실패");
		history.back();
	</script>
<%
} 
%>
