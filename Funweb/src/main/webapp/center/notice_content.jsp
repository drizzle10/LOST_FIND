<%@page import="java.util.List"%>
<%@page import="board.ReplyDTO"%>
<%@page import="board.ReplyDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO dao = new BoardDAO();

dao.updateReadcount(num); 

BoardDTO board = dao.selectBoard(num);

String sId = (String)session.getAttribute("sId");

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
<script type="text/javascript">
	function forwardReply() {
		<%if(sId != null) {%>
			var content = document.getElementById("reply_content").value;
			
			location.href = "notice_content_reply_writePro.jsp?boardType=notice&num=<%=board.getNum()%>&name=<%=sId%>&content=" + content;
		<%} else {%>
			alert("댓글작성은 로그인 후 사용 가능합니다!");
			location.href="../member/login.jsp";
		<%}%>
	}
</script>
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
					<td>댓글</td>
					<td colspan="2" class="content_reply">
						<textarea rows="4" id="reply_content" placeholder="댓글을 작성하려면 로그인하세요" style="width: 600px; height: 100px;"></textarea><br>
						<input type="button" class="reply_btn" value="등록" 
								onclick="forwardReply()" style="cursor:pointer">
					</td>
				</tr>
				</table>
				<div id="table_search">
				<input type="button" style="cursor:pointer" value="글수정" class="btn" onclick="location.href='notice_update.jsp?num=<%=num%>'"> <input
					type="button" style="cursor:pointer" value="글삭제" class="btn" onclick="location.href='notice_delete.jsp?num=<%=num%>'"> <input
					type="button" style="cursor:pointer" value="글목록" class="btn" onclick="location.href='notice.jsp'">
				</div>
				<div id="reply">
				<%
				ReplyDAO replyDAO = new ReplyDAO();
				List<ReplyDTO> replyList = replyDAO.selectReplyList(num);
				
				SimpleDateFormat sdf2 = new SimpleDateFormat("MM-dd HH:mm");
				
				for(ReplyDTO reply : replyList) {
				%>
						<div><%=reply.getName() %></div>
						<div><%=reply.getContent() %></div>
						<div><%=sdf2.format(reply.getDate()) %></div>
						<div>
							<%if(sId == null) { %>
								<script>
									document.getElementById("reply_content").focus();
								</script>
						</div>	
							<%}else if(sId.equals(reply.getName())) {%>
								<input type="button" value="삭제" onclick="location.href='notice_content_reply_deletePro.jsp?num=<%=reply.getNum()%>&refNum=<%=num%>'">
							<%} %>						
						<hr>
				<%} %>
				</div>	
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


