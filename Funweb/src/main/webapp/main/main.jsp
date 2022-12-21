<%@page import="board.FileBoardDTO"%>
<%@page import="board.FileBoardDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function show_layer(div_name){

 document.all.div_01.style.display="none";

 document.all.div_02.style.display="none";

 document.all.div_03.style.display="none";
 
 switch(div_name){

  case '1':

  document.all.div_01.style.display="";

  break;

  case '2':

  document.all.div_02.style.display="";

  break;
 
  case '3':

  document.all.div_03.style.display="";

  break;
 }
}
</script>
</head>
	<div id="wrap">
		<jsp:include page="../inc/top.jsp"></jsp:include>
			<div align="center">
				<iframe width="85%" height="600" style="padding: 30px;" src="https://www.youtube.com/embed/3XYyHq2JBn4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div id=div_01>
				<table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px; padding: 30px; text-align: center;" >
			 		<tr >
						<td style="height: 50px;">공지사항</td>
						<td style="height: 50px;"><a href="javascript:show_layer('2');">분실물을 찾아요!</a></td>
						<td style="height: 50px;"><a href="javascript:show_layer('3');">주인을 찾아요!</a></td>
					</tr>
					<%
					BoardDAO dao = new BoardDAO();
					ArrayList<BoardDTO> boardList = dao.selectRecentBoardList();
					
					SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
					
					for(BoardDTO board : boardList){ %>
					<tr>
						<td width="30"><a href="../center/notice_content.jsp?num=<%=board.getNum()%>"><%=board.getSubject() %></a></td>
						<td width="30"><a href=""><%=board.getName() %></a></td>
						<td width="30"><a href=""><%=sdf.format(board.getDate()) %></a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
			<!---------------------------------------------------------------------------------------------------------->
			<div id=div_02 style="DISPLAY: none">
				<table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px; padding: 30px; text-align: center;">
					<tr>
						<td style="height: 50px;"><a href="javascript:show_layer('1');">공지사항</a></td>
						<td style="height: 50px;">분실물을 찾아요!</td>
						<td style="height: 50px;"><a href="javascript:show_layer('3');">주인을 찾아요!</a></td>
					</tr>
					<%
					FileBoardDAO dao2 = new FileBoardDAO();
					ArrayList<FileBoardDTO> boardList2 = dao2.selectRecentFileBoardList();
					
					SimpleDateFormat sdf2 = new SimpleDateFormat("yy-MM-dd");
					
					for(FileBoardDTO board : boardList2){ %>
					<tr>
						<td width="30"><a href="../center/findLost_content.jsp?num=<%=board.getNum()%>"><%=board.getSubject() %></a></td>
						<td width="30"><a href=""><%=board.getName() %></a></td>
						<td width="30"><a href=""><%=sdf.format(board.getDate()) %></a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
			<div id=div_03 style="DISPLAY: none">
				<table width="707px" cellspacing="0" cellpadding="0" border="0" align="center" style="margin-top: 30px; padding: 30px; text-align: center;">
					<tr>
						<td style="height: 50px; text-decoration: none;"><a href="javascript:show_layer('1');">공지사항</a></td>
						<td style="height: 50px; text-decoration: none;"> <a href="javascript:show_layer('2');">분실물을 찾아요!</a></td>
						<td style="height: 50px; text-decoration: none;">주인을 찾아요!</td>
					</tr>
					<%
					FileBoardDAO dao3 = new FileBoardDAO();
					ArrayList<FileBoardDTO> boardList3 = dao2.selectRecentFileBoardList2();
					
					SimpleDateFormat sdf3 = new SimpleDateFormat("yy-MM-dd");
					
					for(FileBoardDTO board : boardList3){ %>
					<tr>
						<td width="30"><a href="../center/findOwner_content.jsp?num=<%=board.getNum()%>"><%=board.getSubject() %></a></td>
						<td width="30"><a href=""><%=board.getName() %></a></td>
						<td width="30"><a href=""><%=sdf.format(board.getDate()) %></a></td>
					</tr>
					<%
					}
					%>
				</table>
			</div>
		<div class="clear"></div>  
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


