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
<!-- 			<h1>유실물이란C</h1> -->
			<div class="lostDeclare">
				<h2><a href="https://terms.naver.com/entry.naver?docId=1132581&cid=40942&categoryId=31721">유실물(遺失物)</a></h2><br>
				<h3>점유자(占有者)의 뜻에 의하지 아니하고<br>어떤 우연한 사정으로 점유를 이탈한 물건 중 도품(盜品)이 아닌 물건</h3>
				<br>
			</div>
			<div class="lostDeclare2">
				<table>
					<tr>
						<th><h3>분실물(紛失物)</h3></th>
						<th><h3>습득물(拾得物)</h3></th>
					</tr>
					<tr>
						<td><p>자기도 모르는 사이에 잃어버린 물건</p></td>
						<td><p>타인이 잃어버리거나 방치한 것을 <br>주워서 얻은 물건</p></td>
					</tr>
				</table>
			</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


