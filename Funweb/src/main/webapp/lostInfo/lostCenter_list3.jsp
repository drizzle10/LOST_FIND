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
				<h2 style="text-align: center;">공항</h2>
				<br>
				<table class="lostCenterList">
						<thead>
							<tr>
								<th>유실물보관소</th>
								<th>전화번호</th>
								<th>지도</th>
								<th>유실물보관소</th>
								<th>전화번호</th>
								<th>지도</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>인천국제공항</td>
								<td>032-741-3114</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/5r5rwc7qKCtybLub7'">지도</button></td>
				  				<td>인천공항경찰대</td>
								<td>032-740-5561~4</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/BNBHVu7UsZw1noKc9'">지도</button></td>
								
							</tr>
							<tr>
								<td>김포공항</td>
								<td>02-2660-4097</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/tTkM7njL4FeniqA46'">지도</button></td>
				  			    <td>김포공항경찰대</td>
							 	<td>02-2660-4097</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/a8vunggtgQWH9z5Z7'">지도</button></td>
				    		</tr>
							<tr>                
								<td>여수공항</td>
								<td>061-682-0112</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/PGokYAt9XdombkfP87'">지도</button></td>
								<td>사천공항</td>
								<td>055-852-4788</td>
							  	<td><button onclick="location.href='https://goo.gl/maps/nBsMAwvCMkJpHKAd6'">지도</button></td>
							</tr>
							<tr>
							  <td>대구공항</td>
							  <td>053-981-4372</td>
							  <td><button onclick="location.href='https://goo.gl/maps/tiBMXz4DBUsS9P556'">지도</button></td>
							  <td>포항공항</td>
							  <td>054-284-0113</td>
							  <td><button onclick="location.href='https://goo.gl/maps/8iRgZta36TSoLua28'">지도</button></td>
							</tr>
							<tr>
							  <td>청주공항</td>
							  <td>043-210-6114</td>
							  <td><button onclick="location.href='https://goo.gl/maps/M9VQuSpvPnpb3hR99'">지도</button></td>
							  <td>김해공항</td>
							  <td>051-974-3776</td>
							  <td><button onclick="location.href='https://goo.gl/maps/UQfpcogbYE5rmS5k7'">지도</button></td>
							</tr>
							<tr>
							  <td>광주공항</td>
							  <td>062-941-7009</td>
							  <td><button onclick="location.href='https://goo.gl/maps/BUNWWkkGr1GmyHXZ9'">지도</button></td>
							  <td>울산공항</td>
							  <td>052-219-6309</td>
							  <td><button onclick="location.href='https://goo.gl/maps/hw7rmJoFBayC6R5x8'">지도</button></td>
							</tr>
							<tr>
							  <td>원주공항</td>
							  <td>033-344-3311</td>
							  <td><button onclick="location.href='https://goo.gl/maps/SjwFFGafqzBBs5xf9'">지도</button></td>
							  <td>제주공항유실물센터</td>
							  <td>064-797-2521</td>
							  <td><button onclick="location.href='https://goo.gl/maps/HFS28gx1eLAFjVLk9'">지도</button></td>
							</tr>
							<tr>
							  <td>군산공항</td>
							  <td>054-284-0113</td>
							  <td><button onclick="location.href='https://goo.gl/maps/j2kVwcQobaESdooW6'">지도</button></td>
							</tr>
						</tbody>
					</table>
		</article>
			
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


