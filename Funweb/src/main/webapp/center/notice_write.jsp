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
 <%String id = (String)session.getAttribute("sId"); 
	
 	if(id == null) {
%> 
		<script> 
			alert("관리자만 접근 가능합니다!"); 
			location.href="notice.jsp";
		</script> 
 <% 
 	} else if(!id.equals("admin")){
 %> 
		<script>
			alert("관리자만 접근 가능합니다!"); 
			location.href="notice.jsp";
		</script> 
 <%} %>	
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
			<form action="notice_writePro.jsp" method="post">
				<table id="notice">
					<tr>
						<td>글쓴이</td>
						<td><input type="text" name="name" required="required"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="pass" required="required"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><input type="text" name="subject" required="required"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="10" cols="20" name="content" required="required"></textarea></td>
					</tr>
				</table>
				<div id="table_search">
					<input type="submit" value="글쓰기" style="cursor:pointer" class="btn">
				</div>
			</form>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


