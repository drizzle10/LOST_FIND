<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유실물 센터 - 전국 유실물 관리센터</title>
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
<!-- 			<h1>전국 유실물 관리센터</h1> -->
				<div class="lostCenterList2">
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list.jsp?value=1';">경찰 유실물센터
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list2.jsp?value=2';">지하철 및 버스조합
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list3.jsp?value=3';">공항
				</div>
				<h2 style="text-align: center;">지하철 및 버스조합</h2>
				<br>
				<table class="lostCenterList">
						<thead>
							<tr>
							  <th colspan="3">유실물보관소</th>
							  <th>전화번호</th>
							  <th>지도</th>
							  <th colspan="2">유실물보관소</th>
							  <th>전화번호</th>
							  <th>지도</th>
							</tr>
						</thead>
						<tbody>
							<tr>
							  <td rowspan="8">지하철</td>
							  <td rowspan="4">서울</td>
							  <td>시청역</td>
							  <td>02-6110-1122</td>
							  <td><button onclick="location.href='https://goo.gl/maps/SLNDEyeD2hChx6Vq8'">지도</button></td>
							  <td rowspan="8">고속버스</td>
							  <td>금호고속</td>
							  <td>02-5260-114</td>
							  <td rowspan="7"><button onclick="location.href='https://goo.gl/maps/mdcsved3VYbgMxaZ8'">고속버스터미널</button><br>
							  <button onclick="location.href='https://goo.gl/maps/tpEvjgE4CLaPwFiz7'">센트럴시티</button><br>
							  <button onclick="location.href='https://goo.gl/maps/wbMdnp1TGh2MwtNW9'">동서울터미널</button>
							  </td>
							</tr>
							<tr>
							  <td>태능입구역</td>
							  <td>02-6311-6766</td>
							  <td><button onclick="location.href='https://goo.gl/maps/7d8JntrPo1bKHKUr8'">지도</button></td>
							  <td>중앙고속</td>
							  <td>02-418-6811</td>
							</tr>
							<tr>
							  <td>충무로역</td>
							  <td>02-6110-3344</td>
							  <td><button onclick="location.href='https://goo.gl/maps/TuJDTXnt4fSAojeA6'">지도</button></td>
							  <td>동부고속</td>
							  <td>02-3484-4160</td>
							</tr>
							<tr>
							  <td>왕십리역</td>
							  <td>02-6311-6765</td>
							  <td><button onclick="location.href='https://goo.gl/maps/Ba8r1jEjm5dfS5f39'">지도</button></td>
							  <td>한일고속</td>
							  <td>02-535-2101</td>
							</tr>
							<tr>
							  <td>부산</d>
							  <td>서면역</td>
							  <td>051-640-7339</td>
							  <td><button onclick="location.href='https://goo.gl/maps/MDxBiydsKZNC7Egt8'">지도</button></td>
							  <td>삼화고속</td>
							  <td>02-753-2408</td>
							</tr>
							<tr>
							  <td>대구</td>
							  <td>반월당역</td>
							  <td>053-640-3333</td>
							  <td><button onclick="location.href='https://goo.gl/maps/Pny5saJjZGwfy3yH7'">지도</button></td>
							  <td>천일고속</td>
							  <td>051-254-9115</td>
							</tr>
							<tr>
							  <td>인천</td>
							  <td>부평삼거리역</td>
							  <td>032-451-3650</td>
							  <td><button onclick="location.href='https://goo.gl/maps/EJUs9K8JASiFkFay9'">지도</button></td>
							  <td>동양고속</td>
							  <td>02-535-3111</td>
							</tr>
							<tr>
							  <td>광주</td>
							  <td>금남로4가역</td>
							  <td>062-604-8554</td>
							  <td><button onclick="location.href='https://goo.gl/maps/SfnQRaUtPNzrXNaY9'">지도</button></td>
							  <td>전국버스연합회</td>
							  <td>02-585-4578</td>
							  <td><button onclick="location.href='https://goo.gl/maps/mPLL8m34A2ciP5cn9'">지도</button></td>
							</tr>
						</tbody>
					</table>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


