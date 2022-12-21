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
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<nav id="sub_menu">
			<ul>
				<li><a href="lostDeclare.jsp">유실물이란</a></li>
				<li><a href="lostProcedures.jsp">유실물 신고 및 처리절차</a></li>
				<li><a href="lostLaw.jsp">유실물 관련 법령</a></li>
				<li><a href="lostCenter_list.jsp">전국 유실물 센터</a></li>
			</ul>
		</nav>
		<article>
<!-- 			<h1>유실물 처리절차</h1> -->
			<div class="lostProcedure2">
				<p>습득물 발생 시 <a href="lostLaw2.jsp">유실물법 시행령</a>에 따라 각 기관에서 7일 동안 보관(또는 즉시) 후 유실자가 나타나지 않을 경우<br> 
				관할경찰서 또는 유실물센터(서울,부산)로 습득물이 이관되오니, 이점 참고하시길 부탁드립니다.</p>
			</div>
			<table class="lostProcedure">
				<tr>
					<td><a href="lostProcedures.jsp">분실자</a></td>
					<td><a href="lostProcedures2.jsp">습득자</a></td>
				</tr>
			</table>
			<img src="../images/procedure.png" alt="습득자처리절차" style="width: 100%; padding: 50px 0 50px 0;">
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>

