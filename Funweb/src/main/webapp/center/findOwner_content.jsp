<%@page import="board.FileBoardDTO"%>
<%@page import="board.FileBoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int num = Integer.parseInt(request.getParameter("num"));

FileBoardDAO dao = new FileBoardDAO();

dao.updateReadcount2(num); 

FileBoardDTO board = dao.selectFileBoard2(num);

%>	

<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
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
<!-- 			<h1>주인을 찾아요!</h1> -->
			<table id="notice">
				<tr>
					<td>글번호</td>
					<td><%=board.getNum() %></td>
				</tr>
				<tr>	
					<td>글쓴이</td>
					<td><%=board.getName() %></td>
				</tr>
				<tr>
					<td>작성일</td>
					<td><%=sdf.format(board.getDate()) %></td>
				</tr>	
				<tr>
					<td>조회수</td>
					<td><%=board.getReadcount() %></td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="3"><%=board.getSubject() %></td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="3"><%=board.getContent() %></td>
				</tr>
				<tr>
					<td>파일</td>
					<td colspan="3">
						<a href="../upload/<%=board.getReal_file()%>" download="<%=board.getOriginal_file() %>"><%=board.getOriginal_file() %></a>
					</td>
				</tr>
			</table>
			<div id="table_search">
				<input type="button" style="cursor:pointer" value="글수정" class="btn" onclick="location.href='findOwner_update.jsp?num=<%=num%>'"> <input
					type="button" style="cursor:pointer" value="글삭제" class="btn" onclick="location.href='findOwner_delete.jsp?num=<%=num%>'"> <input
					type="button" style="cursor:pointer" value="글목록" class="btn" onclick="location.href='findOwner.jsp'">
			</div>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


