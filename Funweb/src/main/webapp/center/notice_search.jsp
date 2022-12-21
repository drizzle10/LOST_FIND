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
SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd HH:mm");

String keyword = request.getParameter("keyword");

if(keyword == null){
	keyword = "";
}
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
<!-- 			<h1>공지사항</h1> -->
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
// 				int pageListLimit = 10; 
				
				int pageNum = 1; 
				
				if(request.getParameter("pageNum") != null){
					pageNum = Integer.parseInt(request.getParameter("pageNum"));
				}
				
				int startRow = (pageNum - 1) * listLimit; 
				
				int endRow = startRow + listLimit - 1; 
				
				BoardDAO dao = new BoardDAO();
				
				
				ArrayList<BoardDTO> boardList = dao.selectBoardList(startRow, listLimit, keyword);
				
// 				for(int i = 0; i < boardList.size(); i++) {
// 					BoardDTO board = boardList.get(i);
// 				}
				
				for(BoardDTO board : boardList) {
					%>
					<tr onclick="location.href='notice_content.jsp?num=<%=board.getNum()%>'">
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
			int boardListCount = dao.selectBoardListCount(keyword); 
			
			int pageListLimit = 10; 
			
			int maxPage = boardListCount / pageListLimit + (boardListCount % pageListLimit == 0 ? 0 : 1);
			
			int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1; 
			
			int endPage = startPage + pageListLimit - 1 ; 
			
			if(endPage > maxPage){ 
				endPage = maxPage;
			}
			%>
				<%if(pageNum == 1) { %>
					<a href="javascript:void(0)">Prev</a>
				<%} else { %>
					<a href="notice_search.jsp?keyword=<%=keyword %>&pageNum=<%=pageNum - 1%>">Prev</a>
				<%} %>
				
				
				<%for(int i = startPage; i <= endPage; i++){%>
					<%if(pageNum == i){ %>
						<a href="javascript:void(0)"><%=i%></a>
					<%} else { %>
						<a href="notice_search.jsp?keyword=<%=keyword %>&pageNum=<%=i%>"><%=i%></a>
					<%} %>
				<%} %>
				
				
				<%if(pageNum == maxPage) { %>
					<a href="javascript:void(0)">Next</a>
				<%} else { %>
					<a href="notice_search.jsp?keyword=<%=keyword %>&pageNum=<%=pageNum + 1%>">Next</a>
				<%} %>
				<div id="table_search">
				<form action="notice_search.jsp" method="get">
					<input type="text" name="keyword" value=<%=keyword %> class="input_box" required="required">
					<input type="submit" value="Search" class="btn" style="cursor:pointer">
					<input type="button" value="글쓰기" style="cursor:pointer" class="btn" onclick="location.href='notice_write.jsp'">
				</form>
				</div>
			</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


