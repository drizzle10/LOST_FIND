<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
</script>
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
				.<div class="lostCenterList2">
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list.jsp?value=1';">경찰 유실물센터
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list2.jsp?value=2';">지하철 및 버스조합
					<input type="radio" name="lostCenter_list" onclick="window.location.href='lostCenter_list3.jsp?value=3';">공항
				</div>
				<h2 style="text-align: center;">경찰 유실물센터</h2>
				<br>
				<table class="lostCenterList">
						<thead>
							<tr>
								<th>관할지방청</th>
								<th>전화번호</th>
								<th>지도</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a href="https://www.smpa.go.kr/home/homeIndex.do?menuCode=www" onclick="alert('홈페이지로 이동하시겠습니까?')">서울청유실물보관센터</a></td>
								<td>02-700-2976</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.5069364106307!2d127.03060881466554!3d37.56667893187889!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca350e57c3297%3A0xba7f4d0ac6427540!2z7ISc7Jq47Yq567OE7Iuc6rK97LCw7LKtIOycoOyLpOusvOuztOq0gOyEvO2EsA!5e0!3m2!1sko!2skr!4v1661782359398!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
							<tr>
								<td><a href="https://www.dgpolice.go.kr/" onclick="alert('홈페이지로 이동하시겠습니까?')">대구청유실물보관센터</a></td>
								<td>053-804-2247</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3234.792887381966!2d128.63142071460982!3d35.829556929431625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565e260277b6a2f%3A0x78c317989061c698!2z64yA6rWs6rSR7Jet7Iuc6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782500323!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>        
					        <tr>
								<td><a href="https://www.bspolice.go.kr/kor/main.do" onclick="alert('홈페이지로 이동하시겠습니까?')">부산청유실물보관센터</a></td>
								<td>051-868-0899</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d104371.33737401216!2d128.97994218472525!3d35.166488279447094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35689354f75572b5%3A0x375a64805ec171e1!2z67aA7IKw6rSR7Jet7Iuc6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782570842!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
							<tr>
								<td><a href="https://www.icpolice.go.kr/" onclick="alert('홈페이지로 이동하시겠습니까?')">인천청유실물보관센터</a></td>
								<td>032-455-2847</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3167.5134051793725!2d126.69956761466156!3d37.448598338632486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b78e86849fcb1%3A0xe51706b2166abf39!2z7J247LKc6rSR7Jet7Iuc6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782620289!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
							<tr>
								<td><a href="https://www.djpolice.go.kr/" onclick="alert('홈페이지로 이동하시겠습니까?')">대전청유실물보관센터</a></td>
								<td>042-609-2347</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3213.251342904747!2d127.38368751462633!3d36.35469040035114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3565497daef84149%3A0xbc26849f31842573!2z64yA7KCE6rSR7Jet7Iuc6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782671960!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
							<tr>
								<td><a href="https://www.ggpolice.go.kr/" onclick="alert('홈페이지로 이동하시겠습니까?')">경기남부청유실물보관센터</a></td>
								<td>031-888-3948</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3174.1959145631595!2d127.02658921465651!3d37.29049034764766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5cbacbd08b19%3A0xbf8a937c5c938f07!2z6rK96riw64Ko67aA6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782711197!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
							<tr>
								<td><a href="https://www.cnpolice.go.kr/" onclick="alert('홈페이지로 이동하시겠습니까?')">충청남도청유실물보관센터</a></td>
								<td>041-336-2347</td>
								<td><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3200.5500915492366!2d126.67405341463618!3d36.661272783208574!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357adebb58f4ba77%3A0x430f8ec7949480a2!2z7Lap7LKt64Ko64-E6rK97LCw7LKt!5e0!3m2!1sko!2skr!4v1661782756869!5m2!1sko!2skr" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></td>
							</tr>
						</tbody>
					</table>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


