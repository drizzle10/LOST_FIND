<%@page import="board.FileBoardDTO"%>
<%@page import="board.FileBoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
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
					<th class="tno">No.</th>
					<th class="ttitle">Title</th>
					<th class="twrite">Write</th>
					<th class="tdate">Date</th>
					<th class="tread">Read</th>
				</tr>
				<%
				int listLimit = 10; 
				
				int pageNum = 1; 
				if(request.getParameter("pageNum") != null) {
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
				}
				
				int startRow = (pageNum - 1) * listLimit;
				
				FileBoardDAO dao = new FileBoardDAO();
				
				ArrayList<FileBoardDTO> boardList = dao.selectBoardList2(startRow, listLimit);
				
				for(FileBoardDTO board : boardList) {
					%>
					<tr onclick="location.href='findOwner_content.jsp?num=<%=board.getNum()%>'">
						<td><%=board.getNum() %></td>
						<td class="left"><%=board.getSubject() %></td>
						<td><%=board.getName() %></td>
<%-- 						<td><%=board.getDate() %></td> --%>
						<td><%=sdf.format(board.getDate()) %></td>
						<td><%=board.getReadcount() %></td>
					</tr>
					<%
				}
				%>
			</table>
			<div id="page_control">
				<%
				int boardListCount = dao.selectBoardListCount2();
				
				int pageListLimit = 10; 
				
				int maxPage = boardListCount / pageListLimit 
								+ (boardListCount % pageListLimit == 0 ? 0 : 1);
				int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
				
				int endPage = startPage + pageListLimit - 1;
				
				if(endPage > maxPage) {
					endPage = maxPage;
				}
				
				%>
				<%if(pageNum == 1) { %>
					<a href="javascript:void(0)">Prev</a>
				<%} else { %>
					<a href="findOwner.jsp?pageNum=<%=pageNum - 1%>">Prev</a>
				<%} %>
				
				
				<%for(int i = startPage; i <= endPage; i++) { %>
					<%if(pageNum == i) { %>
						<a href="javascript:void(0)"><%=i %></a>
					<%} else { %>
						<a href="findOwner.jsp?pageNum=<%=i %>"><%=i %></a>
					<%} %>
				<%} %>
				
				
				<%if(pageNum == maxPage) { %>
					<a href="javascript:void(0)">Next</a>
				<%} else { %>
					<a href="findOwner.jsp?pageNum=<%=pageNum + 1%>">Next</a>
				<%} %>
			</div>
			<div id="table_search">
				<form action="findOwner_search.jsp" method="get">
					<input type="text" name="keyword" class="input_box" required="required">
					<input type="submit" value="Search" style="cursor:pointer" class="btn">
				<input type="button" value="글쓰기" style="cursor:pointer" class="btn" onclick="location.href='findOwner_write.jsp'">
				</form>
			</div>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>






