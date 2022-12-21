<%@page import="board.FileBoardDTO"%>
<%@page import="board.FileBoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
int num = Integer.parseInt(request.getParameter("num"));

FileBoardDAO dao = new FileBoardDAO();
FileBoardDTO board = dao.selectFileBoard(num);

%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%
	String id = (String)session.getAttribute("sId");
	
	if(id == null) {
		%>
		<script>
			alert("접근 권한이 없습니다!");
			history.back();
		</script>
	<%
	} else if(!id.equals(board.getName()) && !id.equals("admin")){%>
		<script>
			alert("접근 권한이 없습니다!");
			history.back();
		</script>
<% }%>
	<div id="wrap">
		<jsp:include page="../inc/top.jsp" />
		<nav id="sub_menu">
			<ul>
				<li><a href="notice.jsp">공지사항</a></li>
				<li><a href="findLost.jsp">분실물을 찾아요!</a></li>
				<li><a href="findOwner.jsp">주인을 찾아요!</a></li>
			</ul>
		</nav>
		<article>
<!-- 			<h1>분실물을 찾아요!</h1> -->
			<form action="findLost_updatePro.jsp" method="post" enctype="multipart/form-data">
				<input type="hidden" name="num" value="<%=request.getParameter("num")%>">
				<input type="hidden" name="real_file" value="<%=board.getReal_file()%>">
				<table id="notice">
					<tr>
						<td>글쓴이</td>
						<td><input type="text" name="name" value="<%=board.getName()%>" required="required" readonly="readonly"></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input type="password" name="pass" required="required"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" value="<%=board.getSubject()%>" required="required"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="10" cols="20" name="content" required="required"><%=board.getContent() %></textarea></td>
					</tr>
					<tr>
						<td>파일</td>
						<td>
							<%=board.getOriginal_file() %><br>
							<input type="file" name="original_file" required="required">
						</td>
					</tr>
				</table>
				<div id="table_search">
					<input type="submit" value="글수정" class="btn" style="cursor:pointer">
				</div>
			</form>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


