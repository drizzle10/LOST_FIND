<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<form action="findOwner_deletePro.jsp" method="post">
				<input type="hidden" name="num" value="<%=request.getParameter("num")%>">
				<table id="notice">
					<tr>
						<td>패스워드</td>
						<td><input type="password" name="pass" ></td>
					</tr>
				</table>
				<div id="table_search">
					<input type="submit" value="글삭제" class="btn" style="cursor:pointer">
				</div>
			</form>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


