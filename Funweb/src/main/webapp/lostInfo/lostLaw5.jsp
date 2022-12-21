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
<!-- 			<h1>유실물 관련 법령</h1> -->
			<div class="lostLaw">
				<select onchange="if(this.value) location.href=(this.value);">
					<optgroup label="관련 법 조항">
						<option value="lostLaw.jsp">유실물법</option>
						<option value="lostLaw2.jsp">유실물법 시행령</option>
						<option value="lostLaw3.jsp">자동차 관리법</option>
						<option value="lostLaw4.jsp">자동차 관리법 시행령</option>
						<option value="lostLaw5.jsp">도로법</option>
						<option value="lostLaw6.jsp">수상에서의 수색, 구조 등에 관한 법</option>
						<option value="lostLaw7.jsp">동물보호법</option>
					</optgroup>
				</select>
			</div>	
			<h2>도로법</h2>
			<hr>
			<div>
				<h3>제75조 (도로에관한 금지행위)</h3>
				<ol>
				  <li>누구든지 정당한 사유 없이 도로에 대하여 다음 각 호의 행위를 하여서는 아니 된다.</li>
				  <li>1. 도로를 파손하는 행위  </li>
				  <li>2. 도로에 토석, 입목·죽(竹) 등 장애물을 쌓아놓는 행위</li>
				  <li>3. 그 밖에 도로의 구조나 교통에 지장을 주는 행위</li>
				</ol>
			</div>
		</article>
		</div>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
</body>
</html>


