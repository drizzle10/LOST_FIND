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
	<%
	String id = (String)session.getAttribute("sId");
	
	if(id == null) {
		%>
		<script>
			alert("회원만 접근 가능합니다!");
			history.back();
		</script>
		<%
	}
	%>
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
			<form action="findOwner_writePro.jsp" method="post" enctype="multipart/form-data">
				<table id="notice">
					<tr>
						<tr>
						<td>글쓴이</td>
						<td><input type="text" name="name" value="<%=id %>" required="required" readonly="readonly"></td>
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
					<tr>
						<td>파일</td>
						<td><input type="file" name="original_file" required="required"></td>
					</tr>
				</table>
				<div id="table_search">
					<input type="submit" value="글쓰기" class="btn" style="cursor:pointer">
				</div>
			</form>
			<div class="clear"></div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


