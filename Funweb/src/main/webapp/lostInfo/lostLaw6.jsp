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
			<h2>수상에서의 수색,구조 등에 관한 법</h2>
			<hr>
			<div>
				<h3>제35조 (구조된 사람ㆍ선박등ㆍ물건의 인계)</h3>
				<ol>
				  <li>① 구조본부의 장 또는 소방관서의 장은 구조된 사람이나 사망자에 대하여는 그 신원을 확인하고 보호자 또는 유족이 있는 경우에는 보호자 또는 유족에게 인계하여야 하며, 구조된 선박등이나 물건에 대하여는 소유자가 확인된 경우에는 소유자에게 인계할 수 있다.</li>
				  <li>② 구조본부의 장 또는 소방관서의 장은 구조된 사람이나 사망자의 신원이 확인되지 아니하거나 인계받을 보호자 또는 유족이 없는 경우 및 구조된 선박등이나 물건의 소유자가 확인되지 아니한 경우에는 구조된 사람, 사망자, 구조된 선박등 및 물건을 특별자치도지사 또는 시장·군수·구청장에게 인계한다.</li>
				  <li>③ 표류물 또는 침몰품(이하 "표류물등"이라 한다)을 습득한 자는 지체 없이 이를 특별자치도지사 또는 시장·군수·구청장에게 인도하여야 한다. 다만, 그 표류물등의 소유자가 분명하고 그 표류물등이 법률에 따라 소유 또는 소지가 금지된 물건이 아닌 경우에는 습득한 날부터 7일 이내에 직접 그 소유자에게 인도할 수 있다.</li>
				</ol>
				<hr>
				
				<h3>제37조 (인계된 물건의처리)</h3>
				<ol>
				  <li>① 제35조제2항에 따라 구조된 선박등 또는 물건을 인계받거나 같은 조 제3항에 따라 습득한 표류물등을 인도받은 특별자치도지사 또는 시장·군수·구청장은 이를 안전하게 보관하여야 한다.</li>
				  <li>② 조난된 선박등의 선장·소유자·운항자 또는 관리자(이하 "선장등"이라 한다)나 물건의 소유자는 특별자치도지사 또는 시장·군수·구청장이 상당하다고 인정하는 담보를 제공하고 해당 물건의 인도를 청구할 수 있으며, 이 경우 제1항에도 불구하고 그 선장등이나 물건의 소유자에게 이를 인도할 수 있다.</li>
				  <li>③ 제1항의 경우 인계받은 물건이 다음 각 호의 어느 하나에 해당하여 보관이 부적당하다고 인정될 경우에는 대통령령으로 정하는 바에 따라 이를 공매하여 그 대금을 보관할 수 있다.</li>
		            <ul>
				          <li>1. 멸실·손상 또는 부패의 염려가 있거나 가격이 현저히 감소될 우려가 있는 것</li>
				          <li>2. 폭발물, 가연성의 물건, 보건상 유해한 물건, 그 밖에 보관상 위험이 발생할 우려가 있는 것 </li>
				          <li>3. 보관비용이 그 물건의 가격에 비하여 현저히 고가인 것</li>
		            </ul>
				  <li>④ 특별자치도지사 또는 시장·군수·구청장이 제3항에 따라 공매를 하고자 할 경우에는 물건의 소유자 또는 선장등에게 특별자치도지사 또는 시장·군수·구청장이 정하는 기간 내에 담보를 제공하고 물건을 인수하게 할 수 있으며, 담보를 제공하지 아니하거나 물건의 인도를 청구하지 아니하는 때에는 공매한다는 뜻을 미리 알려야 한다.</li>
				</ol>
			</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


