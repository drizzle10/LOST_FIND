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
			<h2>자동차 관리법</h2>
			<hr>
	  		<div>
				<h3>제26조 (자동차의 강제처리)</h3>
				<ol>
				  <li>① 자동차(자동차와 유사한 외관 형태를 갖춘 것을 포함한다. 이하 이 조에서 같다)의 소유자 또는 점유자는 다음 각 호의 어느 하나에 해당하는 행위를 하여서는 아니 된다. </li>
		            <ul>
				          <li>1. 자동차를 일정한 장소에 고정시켜 운행 외의 용도로 사용하는 행위 </li>
				          <li>2. 자동차를 도로에 계속하여 방치하는 행위 </li>
				          <li>3. 정당한 사유 없이 자동차를 타인의 토지에 방치하는 행위 </li>
		            </ul>
				  <li>②  시장·군수·구청장은 제1항 각 호의 어느 하나에 해당된다고 판단되면 해당 자동차를 일정한 곳으로 옮긴 후 국토교통부령으로 정하는 바에 따라 그 자동차의 소유자 또는 점유자에게 폐차 요청이나 그 밖의 처분 등을 하거나, 그 자동차를 찾아가는 등의 방법으로 본인이 적절한 조치를 취할 것을 명하여야 한다. &lt;개정 2013.3.23.&gt;</li>
				  <li>③  시장·군수·구청장은 자동차의 소유자 또는 점유자가 제2항에 따른 명령을 이행하지 아니하거나 해당 자동차의 소유자 또는 점유자를 알 수 없을 경우에는 대통령령으로 정하는 바에 따라 그 자동차를 매각하거나 폐차할 수 있다. 이 경우 매각 또는 폐차에 든 비용은 그 소유자 또는 점유자로부터 징수할 수 있다.</li>
				  <li>④  제3항에 따라 자동차를 매각 또는 폐차한 경우 그에 들어간 비용을 충당하고 남은 금액이 있을 때에는 그 자동차의 소유자 또는 점유자에게 잔액을 지급하여야 한다. 다만, 자동차의 소유자 또는 점유자를 알 수 없는 경우에는 「공탁법」에 따라 잔액을 공탁(供託)하여야 한다. <br/>[전문개정 2009.2.6.]</li>
				</ol>
				<hr>
				
				<h3>제52조(이륜자동차에 대한 준용)</h3>
				  <p>이륜자동차에 관하여는 제7조, 제9조, 제10조제5항(제10조제7항에서 준용하는 경우를 포함한다), 제13조제3항부터 제7항까지, 제18조, 제20조, 제22조, 제23조, 제26조, 제28조, 제29조, 제30조, 제30조의2부터 제30조의5까지, 제31조, 제31조의2, 제32조, 제33조, 제33조의2, 제34조 및 제37조를 준용한다. 
				  이 경우 "시·도지사"는 "시장·군수·구청장"으로, "등록"은 "신고"로, "자동차"는 "이륜자동차"로, "자동차안전기준"은 "이륜자동차의 안전기준"으로, "부품안전기준"은 "이륜자동차의 부품안전기준"으로, "자동차자기인증"은 "이륜자동차의 자기인증"으로, "부품자기인증"은 "이륜자동차의 부품자기인증"으로, 
				  "자동차제작자등"은 "이륜자동차의 제작자등"으로, "부품제작자등"은 "이륜자동차의 부품제작자등"으로, "자동차 기술검토 및 안전검사"는 "이륜자동차 실측확인"으로 본다. &lt;개정 2011.5.24., 2012.5.23., 2014.1.7., 2015.8.11.&gt; <br/>[전문개정 2009.2.6.]</p>
	  		</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


